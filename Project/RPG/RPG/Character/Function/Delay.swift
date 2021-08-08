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
        
    }
}
