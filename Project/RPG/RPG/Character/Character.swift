import SpriteKit
import GameplayKit

class Character: SKSpriteNode {
    
// MARK: - Variable
    // Direction //
    var CurrentDirection = Direction.ST
    var LastDirection = Direction.ST
    
    //공격에 대한 방향
    var AttackDirection = Direction.S
    
    // Status //
    var PositionX = CGFloat()
    var PositionY = CGFloat()
    var SP = CGFloat()
    var Number = Int()
    
    // Move //
    var SpeedX = CGFloat()
    var SpeedY = CGFloat()
    
    // Mode //
    var MoveDelayIs = Bool(false) // 값이 2개. 참 거짓 트루 폴스-> 딜레이가 있는가 없는가,
    var AttackDelayIs = Bool(false)
    var SkillDelayIs = Bool(false)
// Variable_End
}
