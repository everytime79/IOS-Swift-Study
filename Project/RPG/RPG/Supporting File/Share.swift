import Foundation
import SpriteKit

// MARK: - Variable - 화면 카메라
var Scene = GameScene()
let LocalCamera = SKCameraNode()

// MARK: - Enumeration

// BodyType //
enum BodyType: UInt32 {
    
    case Player = 1
    case Monster = 2    
}

// Direction // - 방향
enum Direction {
    case E, W, S, N, ST
}
// Enumeration
