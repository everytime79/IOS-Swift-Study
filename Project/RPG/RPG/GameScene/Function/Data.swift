import SpriteKit
import GameplayKit

extension GameScene {
    
// MARK: - Player
    func Data_Player() {
        
        let Date = GameData["Player"] as! [String:Any]
        let SP = Data["SP"] as! CGFloat
        
        Player = Character(imageNamed: "RedSwan")
        Player.SP = SP
        Player.zPosition = 10
        self.addChild(Player)

        
    }
// Player_End
    
}
