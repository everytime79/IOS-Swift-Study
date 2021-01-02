//
//  BountyViewController.swift
//  BountyList
//
//  Created by 박성수 on 2020/12/20.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let viewModel = BountyViewModel()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "showDetail" { // segue 중에서 showDetail 일 경우
            let vc = segue.destination  as? DetailViewController
            
            if let index = sender as? Int{ // 몇 번째를 선택했냐에 따름으로 Int
                let bountyInfo = viewModel.bountyInfo(at: index)
                vc?.viewModel.update(model: bountyInfo)

            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//     UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return viewModel.numOfBountyInfoList
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }

        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)

        cell.update(info: bountyInfo)
        return cell
        
    }
    
//     UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)번 클릭") // 확인
        
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
}

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    func update(info: BountyInfo) {
        imgView.image = info.image
        nameLabel.text = info.name
        bountyLabel.text = "\(info.bounty)"
    }
}

class BountyViewModel {
    let bountyInfoList: [BountyInfo] = [
        
        BountyInfo(name: "브룩", bounty: 83000000),
        BountyInfo(name: "쵸파", bounty: 100),
        BountyInfo(name: "프랑키", bounty: 94000000),
        BountyInfo(name: "루피", bounty: 1500000000),
        BountyInfo(name: "나미", bounty: 66000000),
        BountyInfo(name: "로빈", bounty: 130000000),
        BountyInfo(name: "상디", bounty: 330000000),
        BountyInfo(name: "조로", bounty: 320000000),
        
    ]
    
    var sortedList: [BountyInfo] {
        let sortedList = bountyInfoList.sorted { prev, next in
            return prev.bounty > next.bounty
        }
        return sortedList
    
    }
    
    var numOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int) -> BountyInfo{
//        return bountyInfoList[index]
        return sortedList[index]
    }
}
