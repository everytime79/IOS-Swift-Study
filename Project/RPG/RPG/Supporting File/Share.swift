import Foundation
import SpriteKit

// MARK: - Variable - 화면 카메라
var Scene = GameScene()
let LocalCamera = SKCameraNode()

// MARK: - Enumeration


// BodyType //
enum BodyType: UInt32 {
    
    case Player = 1
    case PlayerAttack = 2
    case Monster = 4
    case MonsterAttack = 8
    case Gold = 16
}


// Direction // - 방향
enum Direction {
    case E, W, S, N, ST
}
// Enumeration
