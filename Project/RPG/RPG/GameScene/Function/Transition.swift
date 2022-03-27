import SpriteKit
import GameplayKit

extension GameScene {
    
    func Function_Transition(Desination: String){
        
        let Scene = GameScene(fileNamed: Desination)
        Scene?.CurrentMap = Desination
        Scene?.scaleMode = .aspectFill
        
        let Transition = SKTransition.fade(with: UIColor.black, duration: 1)
        self.view?.presentScene(Scene!, transition: Transition)
        
    }
    // 11:34
    
}
