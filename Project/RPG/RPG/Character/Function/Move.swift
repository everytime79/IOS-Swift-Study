
import SpriteKit
import GameplayKit

extension Character {
 
    func Function_Move() {
        
        switch CurrentDirection {
        
        case .ST:
            SpeedX = 0
            SpeedY = 0
            
        case .E:
            SpeedX = SP
            SpeedY = 0
            
        case .W:
            SpeedX = -SP
            SpeedY = 0
            
        case .S:
            SpeedX = 0
            SpeedY = -SP
            
        case .N:
            SpeedX = 0
            SpeedY = SP

        }
        
        self.position = CGPoint(x: self.position.x + SpeedX, y: self.position.y + SpeedY)
        
    }
    
}
