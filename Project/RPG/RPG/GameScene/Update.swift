import SpriteKit
import GameplayKit

extension GameScene {
 
// MARK: - Update
    override func update(_ currentTime: TimeInterval) {
        
        // Player
        Player.Function_Move()
        
        // Monster
        for i in 0...MonsterGroup.count - 1 {
            MonsterGroup[i].Update_Monster()    
        }

        
        // MiniMap
        PlayerMinion.position = CGPoint.zero
        
        for i in 0...MonsterGroup.count - 1 {
            
            MonsterMinionGroup[i].position.x = (MonsterGroup[i].position.x - Player.position.x) / 10
            MonsterMinionGroup[i].position.y = (MonsterGroup[i].position.y - Player.position.y) / 10
            
            if MiniMap.intersects(MonsterMinionGroup[i]) {
                
                MonsterMinionGroup[i].alpha = 1 // 표시점이 미니맵 경계 내 있을 때 표시
            } else {
                
                MonsterMinionGroup[i].alpha = 0 // 적을 표시하는 표시점이 미니맵 테두리를 벗어났을 경우 알파를 0으로 해서 보이지 않게끔
            }
        }
        
        // Camera
        LocalCamera.position = Player.position
        
    }
// Update_End
}
