
import SpriteKit
import GameplayKit

// GameScene의 연장, 단지 별개의 파일로 나눴다.
extension GameScene {
    
// MARK: - Control Ball Angle
    func ControlBallAngle(Degree: CGFloat) {
        
        if (Degree >= -45 && Degree < 45) {
        
            print("Player's current direction is East")
            
        } else if (Degree >= 45 && Degree < 135) {
            
            print("Player's current direction is North")
            
        } else if (Degree >= 135 && Degree < 180) {
            
            print("Player's current direction is West")
            
        } else if (Degree >= -180 && Degree < -130) {
            
            print("Player's current direction is West")
            
        } else if (Degree >= -135 && Degree < -45) {
            
            print("Player's current direction is South")

        }
    
    }
// Control Ball Angle_End
    
    
// MARK: - Touch
    // override func -> xcode 만의 func, override 가 없는 func이란 직접 만드는 func
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in (touches) {
            
            let Location = touch.location(in: self)
            
            ControlBase.position = Location
            ControlBall.position = ControlBase.position
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in (touches) {
            
            let Location = touch.location(in: self)
            
            let DeltaX = Location.x - ControlBase.position.x
            let DeltaY = Location.y - ControlBall.position.y
            let Angle = atan2(DeltaY, DeltaX)
            let Degree = Angle * CGFloat(180 / Double.pi)
            
            ControlBallAngle(Degree: Degree)
            
            let Lenght = ControlBase.frame.size.height / 2
            let DistanceX = cos(Angle) * Lenght
            let DistanceY = sin(Angle) * Lenght
            
            if ControlBase.frame.contains(Location) { // 컨트롤베이스 프레임 내에서 터지를 하게 된다면
                
                ControlBall.position = Location // 컨트롤 볼이 그 부분으로 이동한다.
            } else {
                
                ControlBall.position = CGPoint(x: ControlBase.position.x + DistanceX, y: ControlBase.position.y + DistanceY)
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) { // 터치 후 똈을 경우
                                
        let MoveCenterActoin = SKAction.move(to: ControlBase.position, duration: 0.2)
        MoveCenterActoin.timingMode = .easeOut // 움직이면서 느려지는 효과
            
        ControlBall.run(MoveCenterActoin)
        
    }
// Touch_End
}
