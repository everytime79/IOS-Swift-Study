import SpriteKit
import GameplayKit

extension GameScene {
    
    func Function_Transition(Desination: String){
        
        let Scene = GameScene(fileNamed: Desination)
        Scene?.CurrentMap = Desination
        Scene?.scaleMode = .aspectFill
        
       
    }
    // 11:34
}
