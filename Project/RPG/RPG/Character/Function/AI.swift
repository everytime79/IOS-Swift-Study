import SpriteKit
import GameplayKit

extension Character {

// MARK: - Random Walk
    func AI_RandomWalk() {
        
        if StopDelayIs == false {
            
            StopDelayIs = true
            
            let WaitAction = SKAction.wait(forDuration: 2)
            let StopAction = SKAction.run { self.CurrentDirection = .ST }
        }
    }
    
}
