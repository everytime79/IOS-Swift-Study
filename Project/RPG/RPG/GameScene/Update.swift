import SpriteKit
import GameplayKit

extension GameScene {
 
// MARK: - Update
    override func update(_ currentTime: TimeInterval) {
        
        Player.Function_Move()
        
        //
        LocalCamera.position = Player.position
    }
// Update_End
    
}
