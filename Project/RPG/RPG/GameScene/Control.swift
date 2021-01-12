
import SpriteKit
import GameplayKit

// GameScene의 연장, 단지 별개의 파일로 나눴다.
extension GameScene {
    
// MARK: - Touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in (touches) {
            
            let Location = touch.location(in: self)

            TouchPoint = Location
        }
    }
// Touch_End
}
