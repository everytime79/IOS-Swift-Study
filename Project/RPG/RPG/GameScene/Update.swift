import SpriteKit
import GameplayKit

extension GameScene {
 
// MARK: - Update
    override func update(_ currentTime: TimeInterval) {
        
        if Player.position.x < TouchPoint.x - 5 {
            
            Player.position.x = Player.position.x + 5
            
        } else if Player.position.x > TouchPoint.x + 5 {
            
            Player.position.x = Player.position.x - 5
            
        }
        
        if Player.position.y < TouchPoint.y - 5 {
            
            Player.position.y = Player.position.y + 5
            
        } else if Player.position.y > TouchPoint.y + 5 {
            
            Player.position.y = Player.position.y - 5
            
        }
    }
// Update_End
    
}
