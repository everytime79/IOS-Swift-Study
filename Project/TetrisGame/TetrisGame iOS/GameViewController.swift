//
//  GameViewController.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/09/20.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 시작 화면 세팅
        
        if let view = self.view as! SKView? {
            if let scene = Intro(fileNamed: "Intro") {
                scene.scaleMode = .aspectFill
                scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
                
                view.presentScene(scene)
                
                view.ignoresSiblingOrder = true
                view.showsFPS = true
                view.showsNodeCount = true
            }
            
        }
        
        
        // 최고점수 초기화 방지를 위해 최고점수의 데이터 값을 휴대폰 데이터에 저장
        // 스마트폰에 bestscore : 변수의 값을 0으로 생성한다.
        if defaults.integer(forKey: "BestScore") == 0{
            defaults.set(0, forKey: "BestScore")
        }
        
        
        
        
//        let scene = GameScene(size: view.frame.size)
//        scene.anchorPoint = CGPoint(x: 0, y:1)
//        // Present the scene
//        let skView = self.view as! SKView
//
//        skView.presentScene(scene)
//
//        skView.ignoresSiblingOrder = true
//        skView.showsFPS = true
//        skView.showsNodeCount = true
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
