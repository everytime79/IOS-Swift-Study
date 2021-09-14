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
        
        DeltaX = CGFloat(Target.position.x - self.position.x)
        DeltaY = CGFloat(Target.position.y - self.position.y)
        
        AdjustedPosition = Target.position
        // 캐릭터와 몬스터는 절대 겹칠 수 없기 떄문에, 거리가 일정치만큼 가까워지면 그만 움직이게 한다.
        
        if self.Class == "Knight" {
            
            Chase_Melee()
            
        } else if self.Class == "Archer" {
            
            Chase_Standoff()
            
        }
        
        
    }
    
}
