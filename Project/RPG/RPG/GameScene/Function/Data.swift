import SpriteKit
import GameplayKit

extension GameScene {
    
// MARK: - Player
    func Data_Player() {
        
        let Data = GameData["Player"] as! [String:Any]
        let Sort = Data["Sort"] as! String
        let Costume = Data["Costume"] as! String
        let SP = Data["SP"] as! CGFloat
        
        let AT = Data["AT"] as! CGFloat
        let DF = Data["DF"] as! CGFloat
        let Luck = Data["Luck"] as! CGFloat
        let HP = Data["HP"] as! CGFloat
        
        Player = Character(imageNamed: "RedSwan")
        Player.Sort = Sort
        Player.Costume = Costume
        Player.AT = AT
        Player.DF = DF
        Player.Luck = Luck
        Player.SP = SP
        Player.HP = HP
        Player.CurrentHP = HP
        Player.zPosition = 10
        Player.Function_Healthbar()
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
                let Sort = Data["Sort"] as! String

                let AT = Data["AT"] as! CGFloat
                let DF = Data["DF"] as! CGFloat
                let Luck = Data["Luck"] as! CGFloat
                
                let Class = Data["Class"] as! String
                let Costume = Data["Costume"] as! String
                let SP = Data["SP"] as! CGFloat
                
                let HP = Data["HP"] as! CGFloat


                let SearchRange = Data["SearchRange"] as! CGFloat
                let AttackRange = Data["AttackRange"] as! CGFloat
                
    // MARK: - Monster.
                Monster = Character(imageNamed: "Archer")
                Monster.PositionX = PositionX
                Monster.PositionY = PositionY
                Monster.Sort = Sort
                Monster.Class = Class
                Monster.Costume = Costume
                
                Monster.AT = AT
                Monster.DF = DF
                Monster.Luck = Luck
                
                Monster.SP = SP
                Monster.RunSP = SP
                
                Monster.HP = HP
                Monster.CurrentHP = HP
                
                Monster.SearchRange = SearchRange
                Monster.AttackRange = AttackRange
                Monster.Number = Number
                
                Monster.position = CGPoint(x: PositionX, y: PositionY)
                Monster.zPosition = 10
                Monster.Function_Healthbar()
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
