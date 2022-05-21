import SpriteKit
import GameplayKit

extension GameScene {
    
    func Function_Transition(Desination: String){
        
        
        
        let Transition = SKTransition.fade(with: UIColor.black, duration: 1)
        self.view?.presentScene(Scene!, transition: Transition)
    }
    // 11:34
    
}
