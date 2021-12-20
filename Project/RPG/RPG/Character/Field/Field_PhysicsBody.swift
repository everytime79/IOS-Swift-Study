import SpriteKit
import GameplayKit

extension Field {
    
// MARK: - Portal
    func PhysicsBody_Portal() {
    
        let PhysicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 25, height: 25))
        
        self.physicsBody = PhysicsBody
        self.physicsBody?.isDynamic = true
        self.physicsBody?.affectedByGravity = false // 중력의 영향 x
        self.physicsBody?.allowsRotation = false // 마주쳤을 떄 돌 필요가 없다.
        self.physicsBody?.categoryBitMask = BodyType.Portal.rawValue // Player = 1, Monster = 2
        self.physicsBody?.contactTestBitMask = BodyType.Player.rawValue
        self.physicsBody?.collisionBitMask = 0
    }
}
