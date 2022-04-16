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
    
 
// Variable_End
}

