import SpriteKit
import GameplayKit

extension GameScene {
 
// MARK: - Update
    override func update(_ currentTime: TimeInterval) {
        
// MARK: - Player
        // Player
        Player.Function_Move()
        
        // Health Point
        if Player.CurrentHP < 0 {
            
            Player.CurrentHP = 0
            
        }
        
        Player.childNode(withName: "HP")?.xScale = Player.CurrentHP / Player.HP
        
        // MiniMap
        PlayerMinion.position = CGPoint.zero
        
// <- Player
        
// MARK: - Monster
        // Monster
        if MonsterGroup.count != 0 {
            
            // Update
            for i in 0...MonsterGroup.count - 1 {
                
                MonsterGroup[i].Update_Monster()
                
            }
            
            // Health Point
            for i in 0...MonsterGroup.count - 1 {
                
                if MonsterGroup[i].CurrentHP < 0 {
                    
                    MonsterGroup[i].CurrentHP = 0
                }
                
                MonsterGroup[i].childNode(withName: "HP")?.xScale = MonsterGroup[i].CurrentHP / MonsterGroup[i].HP
            }
            
            // Mini Map
            for i in 0...MonsterGroup.count - 1 {
                
                MonsterMinionGroup[i].position.x = (MonsterGroup[i].position.x - Player.position.x) / 10
                MonsterMinionGroup[i].position.y = (MonsterGroup[i].position.y - Player.position.y) / 10
                
                if MiniMap.intersects(MonsterMinionGroup[i]) {
                    
                    MonsterMinionGroup[i].alpha = 1 // 표시점이 미니맵 경계 내 있을 때 표시
                } else {
                    
                    MonsterMinionGroup[i].alpha = 0 // 적을 표시하는 표시점이 미니맵 테두리를 벗어났을 경우 알파를 0으로 해서 보이지 않게끔
                }
            }
            
        }
// <- Monster
        
// MARK: - Field
        // Camera
        LocalCamera.position = Player.position
    }
// Update_End
}
