import SpriteKit
import GameplayKit

extension Character {
    
// MARK: - Monster
    func Update_Monster() {
        
        // Status
        if self.WalkingIs == true {
            
            self.SP = WalkSP
            
        } else {
            
            self.SP = RunSP
            
        }
        
        // AI
        let DistanceToPlayer = sqrt(pow(self.position.x - Scene.Player.position.x, 2) + pow(self.position.y - Scene.Player.position.y, 2))
        
        if DistanceToPlayer < SearchRange {
            
            // 범위 안에 들어오면 캐릭터를 체이스
            self.WalkingIs = false
            AI_Chase(Target: Scene.Player)
            
        } else {
            
            // 범위 밖으로 나가면 랜덤 걷기
            self.WalkingIs = true
            AI_RandomWalk()
            
        }
        
        if DistanceToPlayer <= AttackRange{
            
            if self.AttackDelayIs == false {
                
                if self.Class == "Knigh" {
                    
                    Attack_Melee()
                    
                } else if self.Class == "Archer" {
                    
                    Attack_Standoff()
                    
                }
            }
        }
    }
}

