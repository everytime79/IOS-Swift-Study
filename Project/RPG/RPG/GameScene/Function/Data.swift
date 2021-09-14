import SpriteKit
import GameplayKit

extension GameScene {
    
// MARK: - Player
    func Data_Player() {
        
        let Data = GameData["Player"] as! [String:Any]
        let Costume = Data["Costume"] as! String
        let SP = Data["SP"] as! CGFloat
        
        Player = Character(imageNamed: "RedSwan")
        Player.Costume = Costume
        Player.SP = SP
        Player.zPosition = 10
        Player.PhysicsBody_Player() // 플레이어를 생성하기 전에 겹치지 않게 해준다.
        self.addChild(Player)
        
        PlayerMinion = Character(color: UIColor.green, size: CGSize(width: 5, height: 5))
        MiniMap.addChild(PlayerMinion)

    }
// Player_End
    
    
    // MARK: - Monster
        func Data_Monster() {
            
            let MonsterGroupData = GameData["MonsterGroup"] as! [String:Any]
            
            var Number = Int(0)
            for (_, value) in MonsterGroupData {
                
                let Data = value as! [String:Any]
                let PositionX = Data["PositionX"] as! CGFloat
                let PositionY = Data["PositionY"] as! CGFloat
                let Class = Data["Class"] as! String
                let Costume = Data["Costume"] as! String

                let SP = Data["SP"] as! CGFloat
                
                Monster = Character(imageNamed: "Archer")
                Monster.PositionX = PositionX
                Monster.PositionY = PositionY
                Monster.Class = Class
                Monster.Costume = Costume
                Monster.SP = SP
                Monster.RunSP = SP
                Monster.Number = Number
                Monster.position = CGPoint(x: PositionX, y: PositionY)
                Monster.zPosition = 10
                Monster.PhysicsBody_Monster() 
                
                MonsterGroup.append(Monster)
                self.addChild(Monster)
                
                MonsterMinion = Character(color: UIColor.red, size: CGSize(width: 5, height: 5))
                MonsterMinion.Number = Number
                
                MonsterMinionGroup.append(MonsterMinion)
                
                MiniMap.addChild(MonsterMinion)
                
                Number += 1 // 각각의 몬스터는 고유의 번호를 가지고 있다.
                
            }
        }
    // Monster_End
}
