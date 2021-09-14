import SpriteKit
import GameplayKit

extension Character {

// MARK: - Random Walk
    func AI_RandomWalk() {
        
        if StopDelayIs == false {
            
            StopDelayIs = true
            
            let WaitAction = SKAction.wait(forDuration: 2)
            let StopAction = SKAction.run { self.CurrentDirection = .ST }
            let StopDelayAction = SKAction.run { self.StopDelayIs = false }
            
            self.run(SKAction.sequence([WaitAction, StopAction, WaitAction, StopDelayAction]))
            
            let RandomNumber = arc4random_uniform(4) // 방향이 4가지 밖에 없기 때문에,
            
            if RandomNumber == 0 {
                
                self.CurrentDirection = .E
                
            } else if RandomNumber == 1 {
                
                self.CurrentDirection = .W
                
            } else if RandomNumber == 2 {
                
                self.CurrentDirection = .S
                
            } else if RandomNumber == 3 {
                
                self.CurrentDirection = .N
                
            }
        }
        
        Function_Move()
        
    }
    
// MARK: - Chase
    func AI_Chase(Target: Character){
        
    }
    
}
