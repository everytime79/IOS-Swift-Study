//
//  DetailViewController.swift
//  BountyList
//
//  Created by 박성수 on 2020/12/20.
//

import UIKit

class DetailViewController: UIViewController {

//    storyboard 와 연결
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
//         DetailView가 올라옴과 동시에 호출, 메모리 올라왔을 때
    }
    
    func updateUI() {
//         해당 정보에 따라 업데이트를 시켜줍니다.

        if let bountyInfo = viewModel.bountyInfo {
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }

    }
    
    @IBAction func closs(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}


class DetailViewModel {
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo?){
        bountyInfo = model
    }
    
}
