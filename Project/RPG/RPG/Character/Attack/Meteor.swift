
import SpriteKit
import GameplayKit

extension Character {
    
    func Attack_Meteor() {
        
        let Position = [CGPoint(x: 0, y: 200),CGPoint(x: 150, y: 100),
                        CGPoint(x: -150, y: 100),CGPoint(x: 100, y: 0),
                        CGPoint(x: 200, y: 0),CGPoint(x: 0, y: -200),
                        CGPoint(x: 150, y: -100),CGPoint(x: -150, y: -100),
                        CGPoint(x: -100, y: 0),CGPoint(x: -200, y: 0)]
        
        for i in 0...9 {
            
            let AttackBody = Character(imageNamed: "Meteor1")
            AttackBody.position = CGPoint(x: self.position.x + Position[i].x, y: self.position.y + Position[i].y)
            AttackBody.zPosition = 1
            AttackBody.alpha = 0
            
            Scene.addChild(AttackBody)
            
            let FadeInAction = SKAction.fadeIn(withDuration: 1.5)
            let FallAction = SKAction.run {
                AttackBody.run(SKAction(named: "Attack_Meteor")!)
            }
        }
    }
    
    
}
