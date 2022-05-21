import SpriteKit
import GameplayKit

class Character: SKSpriteNode {
    
// MARK: - Variable
    
    // Direction //
    var CurrentDirection = Direction.ST
    var LastDirection = Direction.ST
    
    //공격에 대한 방향
    var AttackDirection = Direction.S
    
   
    
    var Gold = Int()
    var GoldAmount = Int()
    
    var Number = Int()
    var SearchRange = CGFloat()
    var AttackRange = CGFloat()
    var DeltaX = CGFloat() // 플레이어의 위치를 계산하기 위한 좌표값
    var DeltaY = CGFloat()
    var AdjustedPosition = CGPoint()
    
    // Move //
    var SpeedX = CGFloat()
    var SpeedY = CGFloat()
    
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

