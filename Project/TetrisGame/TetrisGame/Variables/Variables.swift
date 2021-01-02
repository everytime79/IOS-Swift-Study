//
//  Variables.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/09/20.
//

//  변수


import Foundation
import SpriteKit

struct Variables{
    static var backarrays = [[Int]]()
    static var scene = SKScene()
    static var brickValue = Brick().bricks()
    static var dx = 4   //초기 x 값 4
    static var dy = 2   //초기 y 값 2
    static let gab = 1
    //static var score = 0
    
    static var startPoint = CGPoint()
    static var brickArrays = Array<CGPoint>()
    static var brickNode = Array<SKSpriteNode>()
    static var blockedArrays = Array<SKSpriteNode>() // 더 이상 움직일 수 없는 블럭들의 모음
    
    static var isPause = false
    
    static var nodeGroup = [[SKSpriteNode]]()
    static var newBrickArrays = [Brick.Bricks]()
    
    static let row = 13
    static let col = 25
}
