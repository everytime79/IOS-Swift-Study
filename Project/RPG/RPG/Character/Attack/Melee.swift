
import SpriteKit
import GameplayKit

extension Character {
  
    func Attack_Melee(){
        
        let AttackBody = Character(imageNamed: "Attack_MeleeE1")
        AttackBody.zPosition = 1
        
        self.addChild(AttackBody)
    }
    
    
}
    
