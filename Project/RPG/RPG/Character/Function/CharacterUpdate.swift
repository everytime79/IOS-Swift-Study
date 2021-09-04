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
        AI_RandomWalk()
        
    }
    
    
}

