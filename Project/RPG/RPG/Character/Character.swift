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
    var Sort = String()
    var Costume = String()
    var Class = String()
    
    var AT = CGFloat()
    var DF = CGFloat()
    var Luck = CGFloat()
    
    var SP = CGFloat()
    var RunSP = CGFloat()
    var WalkSP = CGFloat(1)
    
    var HP = CGFloat()
    var CurrentHP = CGFloat()
    var EXP = CGFloat()
    var LV = CGFloat()
    
   
    // Mode //
    var MoveDelayIs = Bool(false) // 값이 2개. 참 거짓 트루 폴스-> 딜레이가 있는가 없는가,
    var AttackDelayIs = Bool(false)
    var AttackDamageIs = Bool(true)
    var SkillDelayIs = Bool(false)
    var StopDelayIs = Bool(false)
    var WalkingIs = Bool(true)
    var GoldActiveIs = Bool(true)
    
// Variable_End
}

