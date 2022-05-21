//
//  GameViewController.swift
//  RPG
//
//  Created by 박성수 on 2021/01/13.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    // MARK: - Status Bar
    override var prefersStatusBarHidden: Bool { return true } // 상단 스테이스 바를 숨길 건인지 여부
    // <- Status Bar
    
    // MARK: - Rotaion & Orientation
    override var shouldAutorotate: Bool { return true } // 자동으로 로테이트 할 것인지 여부
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    // <- Rotaion & Orientation
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let CurrentMap = "Village" // 시작할 맵이 무엇인지
        Scene = GameScene(fileNamed: CurrentMap)!
        Scene.CurrentMap = CurrentMap
        Scene.scaleMode = .aspectFill // 화면 꽉차게
        
        let View = self.view as! SKView
        
        View.presentScene(Scene)
        View.ignoresSiblingOrder = true
        View.showsFPS = true
        View.showsNodeCount = true
    }
}

