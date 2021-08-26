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
        self.addChild(Player)

    }
// Player_End
    
    // MARK: - Monster
        func Data_Monster() {
            
            let MonsterGroupData = GameData["MonsterGroup"] as! [String:Any]
            
            for i in MonsterGroupData {
                
                
            }
            
            let Data = GameData["Player"] as! [String:Any]
            let SP = Data["SP"] as! CGFloat
            
            Player = Character(imageNamed: "RedSwan")
            Player.SP = SP
            Player.zPosition = 10
            self.addChild(Player)

        }
    // Monster_End
}
