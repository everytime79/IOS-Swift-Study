import SpriteKit
import GameplayKit

extension GameScene {
 
// MARK: - Update
    override func update(_ currentTime: TimeInterval) {
        
        
        // Player
        Player.Function_Move()
        
        // MiniMap
        PlayerMinion.position = CGPoint.zero
        
        for i in 0...MonsterGroup.count - 1 {
            
            MonsterMinionGroup[i].position.x = (MonsterGroup[i].position.x - Player.position.x) / 10
            MonsterMinionGroup[i].position.y = (MonsterGroup[i].position.y - Player.position.y) / 10
            
            if MiniMap.intersects(MonsterMinionGroup[i]) {
                
                MonsterMinionGroup[i].alpha = 1
            } else {
                
                MonsterMinionGroup[i].alpha = 0
            }
        }
        
        // Camera
        LocalCamera.position = Player.position
    }
// Update_End
    
}
