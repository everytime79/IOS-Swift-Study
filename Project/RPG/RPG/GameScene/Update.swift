import SpriteKit
import GameplayKit

extension GameScene {
 
// MARK: - Update
    override func update(_ currentTime: TimeInterval) {
        
        
        // Player
        Player.Function_Move()
        
        // MiniMap
        
        // Camera
        LocalCamera.position = Player.position
    }
// Update_End
    
}
