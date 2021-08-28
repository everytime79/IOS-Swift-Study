import SpriteKit
import GameplayKit

extension Character {
    
// MARK: - Player
    func PhysicsBody_Player() {
    
        let Texture = SKTexture(imageNamed: "RedSwan")
        let PhysicsBody = SKPhysicsBody(texture: Texture, size: self.size)
        
        self.physicsBody = PhysicsBody
        self.physicsBody?.isDynamic = true
        self.physicsBody?.affectedByGravity = false // 중력의 영향 x
        self.physicsBody?.allowsRotation = false // 마주쳤을 떄 돌 필요가 없다.
        self.physicsBody?.categoryBitMask = BodyType.Player.rawValue
    }
    
// MARK: - Monster
    
}
