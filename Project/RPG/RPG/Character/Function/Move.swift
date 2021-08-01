
import SpriteKit
import GameplayKit

extension Character {
 
    func Function_Move() {
        
        switch CurrentDirection {
        
        case .ST:
            SpeedX = 0
            SpeedY = 0
            
        case .E:
            SpeedX = SP
            SpeedY = 0
            // 동쪽으로 가는 동안,
            if CurrentDirection != LastDirection {
                
                let MoveAtlas = SKTextureAtlas(named: "RedSwanMoveE")
                var MoveFrame = [SKTexture]()
                
                //반복 실행
                for i in 1...MoveAtlas.textureNames.count / 2 {
                    //1부터 4까지
                    let TextureName = "RedSwanMoveE" + "\(i)" //i는 숫자임으로 문자로 바꿔준다.
                    MoveFrame .append(MoveAtlas.textureNamed(TextureName))
                    
                }
            }
            LastDirection = CurrentDirection
            
        case .W:
            SpeedX = -SP
            SpeedY = 0
            
        case .S:
            SpeedX = 0
            SpeedY = -SP
            
        case .N:
            SpeedX = 0
            SpeedY = SP

        }
        
        self.position = CGPoint(x: self.position.x + SpeedX, y: self.position.y + SpeedY)
        
    }
    
}
