import SpriteKit
import GameplayKit

extension GameScene {
    
// MARK: - Player
    func Data_Player() {
        
        let Data = GameData["Player"] as! [String:Any]
        let SP = Data["SP"] as! CGFloat
        
        Player = Character(imageNamed: "RedSwan")
        Player.SP = SP
        Player.zPosition = 10
        Player.PhysicsBody_Player()
        self.addChild(Player)

    }
// Player_End
    
    // MARK: - Monster
        func Data_Monster() {
            
            let MonsterGroupData = GameData["MonsterGroup"] as! [String:Any]
            
            for (_, value) in MonsterGroupData {
                
                
                let Data = value as! [String:Any]
                let PositionX = Data["PositionX"] as! CGFloat
                let PositionY = Data["PositionY"] as! CGFloat
                let SP = Data["SP"] as! CGFloat
                
                Monster = Character(imageNamed: "Archer")
                Monster.PositionX = PositionX
                Monster.PositionY = PositionY
                Monster.SP = SP
                Monster.position = CGPoint(x: PositionX, y: PositionY)
                Monster.zPosition = 10
                
                MonsterGroup.append(Monster)
                
                self.addChild(Monster)
            }
        }
    // Monster_End
}
