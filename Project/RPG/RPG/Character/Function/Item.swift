import SpriteKit
import GameplayKit

extension Character {
        
    func Function_Item(){
        
        let ItemBody = Character(imageNamed: "ItemButton")
        ItemBody.zPosition = 1
        ItemBody.position = CGPoint(x: 0, y: self.size.height) // 캐릭터 머리 위에서 사용
        ItemBody.xScale = 0.7
        ItemBody.yScale = 0.7
        
        self.addChild(ItemBody)
        
        // Action //
        let FadeOutAction = SKAction.fadeOut(withDuration: 1)
        let RemoveAction = SKAction.run { ItemBody.removeFromParent() }
        
        ItemBody.run(SKAction.sequence([FadeOutAction, RemoveAction]))
    }
    
}
