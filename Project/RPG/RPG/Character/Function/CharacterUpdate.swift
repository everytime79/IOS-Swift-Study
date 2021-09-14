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
            
            self.WalkingIs = false
            AI_Chase(Target: Scene.Player)
            
        } else {
            
            self.WalkingIs = true
            AI_RandomWalk()
            
        }
        
    }
    
    
}

