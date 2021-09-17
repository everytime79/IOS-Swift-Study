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
            // 가로축이 더 멀리 떨어져 있는 경우, 가로축 우선으로 따라가기 위함.
            if DeltaX > 0 {
                
                self.CurrentDirection = .E
                
            } else if DeltaX < 0 {
                
                self.CurrentDirection = .W
                
            }
            
        } else if AbsDeltaX <= AbsDeltaY {
            // 세로축이 더 멀리 떨어져 있는 경우, 세로축 우선으로 따라가기 위함.
            if DeltaY < 0 {
                
                self.CurrentDirection = .S
                
            } else if DeltaY > 0 {
                
                self.CurrentDirection = .N
                
            }
        }
        Function_Move()
    }
    
// MARK: - Standoff
    func Chase_Standoff() {
        
        let AbsDeltaX = abs(DeltaX)
        let AbsDeltaY = abs(DeltaY)
        
        if AbsDeltaX < AbsDeltaY {
            
            if AbsDeltaX < CGFloat(self.SP / 1.7) && AbsDeltaX >= 0 {
                
                self.position.x = AdjustedPosition.x
                self.CurrentDirection = .ST
                
                if AbsDeltaY < CGFloat(self.SP / 1.7) && AbsDeltaY >= 0 {
                    
                    self.position.y = AdjustedPosition.y
                    self.CurrentDirection = .ST
                    
                } else if DeltaY > 0 {
                    
                    self.CurrentDirection = .N
                    
                } else if DeltaY < 0 {
                    
                    self.CurrentDirection = .S
                }
                
            } else if DeltaX > 0 {
                
                self.CurrentDirection = .E
                
            } else if DeltaX < 0 {
                
                self.CurrentDirection = .W
            }
            
        } else if AbsDeltaX >= AbsDeltaY {
            
            if AbsDeltaY < CGFloat(self.SP / 1.7) && AbsDeltaY >= 0 {
                
                self.position.y = AdjustedPosition.y
                self.CurrentDirection = .ST
                
                if AbsDeltaX < CGFloat(self.SP / 1.7) && AbsDeltaX >= 0 {
                    
                    self.position.x = AdjustedPosition.x
                    self.CurrentDirection = .ST
                    
                } else if DeltaX > 0 {
                    
                    self.CurrentDirection = .E
                    
                } else if DeltaX < 0 {
                    
                    self.CurrentDirection = .W
                }
                
            } else if DeltaY > 0 {
                
                self.CurrentDirection = .N
                
            } else if DeltaY < 0 {
                
                self.CurrentDirection = .S
            }
        }
        Function_Move()
    } 
}
