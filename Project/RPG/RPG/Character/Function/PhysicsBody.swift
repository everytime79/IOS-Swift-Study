import SpriteKit
import GameplayKit

extension Character {
    
// MARK: - Player
    func PhysicsBody_Player() {
    
        let Texture = SKTexture(imageNamed: "RedSwan")
        let PhysicsBody = SKPhysicsBody(texture: Texture, size: self.size)
        
        self.physicsBody = PhysicsBody
        
    }
    
// MARK: - Monster
    
    
}
