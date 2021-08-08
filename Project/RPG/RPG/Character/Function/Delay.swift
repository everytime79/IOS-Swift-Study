import SpriteKit
import GameplayKit

extension Character {
    
    // 사용하려는 스킬의 쿨타임을 추가
    func Function_DelayEffect(Button: String, Delay: CGFloat) {
        
        // Circle
        let Radius = CGFloat(46.6)
        let Circle = SKShapeNode(circleOfRadius: Radius)
        // 스킬 버튼 보다는 위에 만들어줘야 하기 때문에 (버튼 : 100) -> 101로 셋팅
        Circle.zPosition = 101
        Circle.zRotation = CGFloat.pi / 2
        // /255를 해줘야 함, 알파는 투명도를 나타냄
        Circle.fillColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 0.6)
        // 겉색 , clear시 아에 없앰.
        Circle.strokeColor = UIColor.clear
        
        if Button == "AttackButton" {
            Circle.position = Scene.AttackButton.position
        } else if Button == "SkillButton" {
            Circle.position = Scene.SkillButton.position
        }
        
        Scene.addChild(Circle)
        
        // Animation
        let Step = Int(360)
        let Interval = TimeInterval(Delay) / TimeInterval(Step)
        let Increment = 1 / CGFloat(Step)
        var Percent = CGFloat(1.0)
        
        let DelayAction = SKAction.run {
            
            Percent -= Increment
            
            // Shape
            let StartAngle = CGFloat(0)
            let EndAngle = CGFloat.pi * 2 * Percent
            let Center = CGPoint.zero
            
            //베지에 곡선
            let BezeirPath = UIBezierPath()
            BezeirPath.move(to: Center)
            BezeirPath.addArc(withCenter: Center, radius: Radius, startAngle: StartAngle, endAngle: EndAngle, clockwise: true) //마지막은 시계 방향으로 할 것인가 여부
            BezeirPath.addLine(to: Center)
            
            Circle.path = BezeirPath.cgPath
        }
        
        let waitAction = SKAction.wait(forDuration: Interval)
        
        Circle.run(SKAction.repeat(SKAction.sequence([DelayAction, waitAction]), count: Step-1)){
            
            Circle.path = nil
            Circle.removeFromParent()
        }
    }
}
