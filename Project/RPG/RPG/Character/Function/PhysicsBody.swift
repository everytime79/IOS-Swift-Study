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
        self.physicsBody?.categoryBitMask = BodyType.Player.rawValue // Player = 1, Monster = 2
        self.physicsBody?.collisionBitMask = BodyType.Monster.rawValue // Monster하고 겹치지 않겠다.
    }
    
// MARK: - Monster
    func PhysicsBody_Monster() {
    
        let Texture = SKTexture(imageNamed: "Archer")
        let PhysicsBody = SKPhysicsBody(texture: Texture, size: self.size)
        
        self.physicsBody = PhysicsBody
        self.physicsBody?.isDynamic = true
        self.physicsBody?.affectedByGravity = false // 중력의 영향 x
        self.physicsBody?.allowsRotation = false // 마주쳤을 떄 돌 필요가 없다.
        self.physicsBody?.categoryBitMask = BodyType.Monster.rawValue // Player = 1, Monster = 2
        self.physicsBody?.collisionBitMask = BodyType.Player.rawValue // 플레이어와 충돌했을 떄, 중복되지 않겠다.(겹침 x).
    }
}
