import SpriteKit
import GameplayKit

extension Character {
    
    // 사용하려는 스킬의 쿨타임을 추가
    func Function_DelayEffect(Button: String, Delay: CGFloat) {
        
        // Circle
        let Radius = CGFloat(46.6)
        let Circle = SKShapeNode(circleOfRadius: Radius)
        Circle.zPosition = 101
    }
}
