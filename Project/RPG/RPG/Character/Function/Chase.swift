import SpriteKit
import GameplayKit

extension Character {

// MARK: - Melee
    func Chase_Melee() {
        
        let AbsDeltaX = abs(DeltaX)
        let AbsDeltaY = abs(DeltaY)
        
        if AbsDeltaX < CGFloat(self.SP / 1.7) && AbsDeltaY < CGFloat(self.SP / 1.7) {
            
            self.position = AdjustedPosition
            self.CurrentDirection = .ST
            
        } else if AbsDeltaX > AbsDeltaY {
            
            if DeltaX > 0 {
                
                self.CurrentDirection = .E
                
            }
        }
        
    }
    
// MARK: - Standoff
    

    
    
    
}
