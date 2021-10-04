import SpriteKit
import GameplayKit

extension Character {
    //물리적인 형태를 지니기 위한,
// MARK: - Player
    func PhysicsBody_Player() {
    
        let Texture = SKTexture(imageNamed: "RedSwan")
        let PhysicsBody = SKPhysicsBody(texture: Texture, size: self.size)
        
        self.physicsBody = PhysicsBody
        self.physicsBody?.isDynamic = true
        self.physicsBody?.affectedByGravity = false // 중력의 영향 x
        self.physicsBody?.allowsRotation = false // 마주쳤을 떄 돌 필요가 없다.
        self.physicsBody?.categoryBitMask = BodyType.Player.rawValue // Player = 1, Monster = 2
        self.physicsBody?.contactTestBitMask = BodyType.MonsterAttack.rawValue
        self.physicsBody?.collisionBitMask = BodyType.Monster.rawValue // Monster하고 겹치지 않겠다.
    }
    
// MARK: - PlayerAttack
    func PhysicsBody_PlayerAttack() {
        
        let PhysicsBody = SKPhysicsBody(rectangleOf: self.size)
        
        self.physicsBody = PhysicsBody
        self.physicsBody?.isDynamic = true
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.allowsRotation = false
        self.physicsBody?.categoryBitMask = BodyType.PlayerAttack.rawValue
        self.physicsBody?.contactTestBitMask = BodyType.Monster.rawValue
        self.physicsBody?.collisionBitMask = BodyType.Monster.rawValue
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
        self.physicsBody?.contactTestBitMask = BodyType.PlayerAttack.rawValue
        self.physicsBody?.collisionBitMask = BodyType.Player.rawValue | BodyType.Monster.rawValue
        // 플레이어와 충돌했을 떄, 중복되지 않겠다.(겹침 x). | 몬스터와도 충돌했을 때, 겹치지 않겠다.(오버랩 되지 않겠다.)
    }
    
// MARK: - Monster
    func PhysicsBody_MonsterAttack() {
        
        let PhysicsBody = SKPhysicsBody(rectangleOf: self.size)

        self.physicsBody = PhysicsBody
        self.physicsBody?.isDynamic = true
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.allowsRotation = false
        self.physicsBody?.categoryBitMask = BodyType.MonsterAttack.rawValue
        self.physicsBody?.contactTestBitMask = BodyType.Player.rawValue
        self.physicsBody?.collisionBitMask = BodyType.Player.rawValue | BodyType.Monster.rawValue
    }
}
