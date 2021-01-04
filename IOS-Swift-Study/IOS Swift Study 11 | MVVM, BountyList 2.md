# MVVM?

>[MVC와 MVVM 패턴](https://m.blog.naver.com/PostView.nhn?blogId=hobin1019&logNo=221616197346&proxyReferer=https:%2F%2Fwww.google.com%2F)

---

# ViewModel : BountyInfo

## BountyViewController.swift
### struct BountyInfo
1. Struct BountyInfo 를 추가합니다.
![](https://images.velog.io/images/everytime79/post/64f75635-4557-4e68-824c-05159f975a08/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2021.50.41.png)
### bountyInfoList
2. nameList, bountyList를 bountyInfoList로 재구성해줍니다.![](https://images.velog.io/images/everytime79/post/ead1afb6-44c1-49a2-83fc-ad3609048217/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2021.51.13.png)
### prepare for segue
3. DetailViewController에 값을 전달하는 부분에서는 BountyInfo를 추가함으로 수정합니다.
**(그 전에 DetailViewController 상단에서 var bountyInfo: BountyInfo? 를 추가하고 기존의 var name, bounty를 삭제합니다.)**![](https://images.velog.io/images/everytime79/post/5cd4076d-69f8-4b4b-9eba-8485fe95ecbe/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.04.57.png)
### tableView & count
4. Cell의 개수는 bountyInfoList의 카운트 되는 만큼의 수만큼![](https://images.velog.io/images/everytime79/post/a8f68a89-f808-4a76-9b8b-214992754c50/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2021.52.20.png)
### tavleView & cell
5. 각각의 Cell에 사진과 이름, 가격이 bountyInfo를 통해 불러오도록 수정합니다.![](https://images.velog.io/images/everytime79/post/773ca773-fbfa-432b-89c8-bf7eac2101ae/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2021.53.33.png)
6. 빌드하여 확인합니다.

## DetailViewController.swift
### var bountyInfo: BountyInfo?
1. var bountyInfo: BountyInfo? 를 추가하고 기존의 var name, bounty를 삭제합니다.
![](https://images.velog.io/images/everytime79/post/e53404b1-92a3-4634-b3de-f4d80e8095e6/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.08.40.png)
### updateUI()
2. updateUI에서 받아온 bountyInfo의 값을 통해 이미지, 이름, 가격 값을 가지기 위해 코드를 수정합니다.![](https://images.velog.io/images/everytime79/post/b1acf82e-c86d-4601-921e-bfc8d779e3f2/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.11.30.png)

---


# ViewModel : BountyViewModel

## BountyViewController.swift
1. class BountyViewModel을 추가하고 앞서 만들었던 bountyInfoList를 가져와 추가합니다.![](https://images.velog.io/images/everytime79/post/acbf41c8-82e3-44d8-874c-ce56db5fbcb4/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.25.14.png)
2. 기존 bountyInfoList는 삭제, viewModel을 만들어줍니다.
( let viewModel = BountyViewModel )![](https://images.velog.io/images/everytime79/post/7f697fd0-50d5-491a-bd53-90fa89e8eb99/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.25.29.png)
3. BountyViewModel 에 리스트의 카운트를 추가해줍니다.![](https://images.velog.io/images/everytime79/post/8159bfa2-7eb8-4463-8852-7d73f03d2307/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.28.06.png)
4. tableView 의 개수를 viewModel에서 가져와줍니다. ![](https://images.velog.io/images/everytime79/post/3717bb11-d66e-474e-974c-25f55755cadf/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.36.04.png)
5. BountyViewModel에 List의 index를 return 해주는 func을 추가합니다.![](https://images.velog.io/images/everytime79/post/e460b91a-020d-45ba-b49b-9972fe001879/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.37.38.png)
6. Cell의 위치와 DetailViewController로 보낼 값을 viewModel에서 가져오기 위해 수정합니다.![](https://images.velog.io/images/everytime79/post/836fb02b-a7d2-4ab5-b0f6-545e47b026a1/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.39.32.png)![](https://images.velog.io/images/everytime79/post/68a92b8e-07d3-4cae-87a0-9f230ed7bfdf/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.40.21.png)


# ViewModel : DetailViewModel
## DetailViewController.swift
1.  ![](https://images.velog.io/images/everytime79/post/150d3f5b-8080-4b3f-a991-c802ae989961/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.58.24.png)
2. ![](https://images.velog.io/images/everytime79/post/6d54135d-a9d2-4f53-a8b1-d8a4b258471b/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.58.37.png)
3. ![](https://images.velog.io/images/everytime79/post/5a7ddeb0-55ac-412e-bde3-b7b972722ce5/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2022.59.02.png)
4. DetailViewModel을 통해 처리하기 때문에 BountyViewController에서 값을 받아오는 코드도 수정합니다. DetailViewModel에 update func을 추가
![](https://images.velog.io/images/everytime79/post/9338fa7e-9164-4c79-90c2-d9c28429e0cf/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2023.06.02.png)
5. BountyViewController의 prepare func에서 update를 통해 전달하도록 수정합니다.  ![](https://images.velog.io/images/everytime79/post/efc44e82-9c53-482d-8842-ff787676718a/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2023.06.33.png)
6. 빌드하여 확인합니다.

# View
## BountyViewController.swift
### ListCell 수정
1. ListCell 코드 수정![](https://images.velog.io/images/everytime79/post/396f0db3-2e12-41db-b9a6-dac31c95360f/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2023.13.22.png)
2. 원래 각 Cell에 이미지, 이름, 가격을 주던 코드를 func update를 추가함으로 
cell.update(info: bountyInfo) 로 대체
![](https://images.velog.io/images/everytime79/post/03c4b699-5ff7-4f22-9ecd-f1aa19eae9ce/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2023.13.49.png)

---

> BountyViewController.swift

```swift
//
//  BountyViewController.swift
//  BountyList
//
//  
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let viewModel = BountyViewModel()
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "showDetail" {
            let vc = segue.destination  as? DetailViewController
            
            if let index = sender as? Int{
                let bountyInfo = viewModel.bountyInfo(at: index)
                vc?.viewModel.update(model: bountyInfo)
     
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

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


struct BountyInfo {
    let name: String
    let bounty: Int
    
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    init(name: String, bounty: Int) {
        self.name = name
        self.bounty = bounty
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
    
    var numOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int) -> BountyInfo{
        return bountyInfoList[index]
    }
}


```

> DetailViewController.swift

```swift
//
//  DetailViewController.swift
//  BountyList
//
//  
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!

    
    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    func updateUI() {

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

```

---

> 201224 추가

# BountyInfo.swift
새로 Swift 파일을 만들어 BountyViewController에서 struct BountyInfo 부분을 가져와 좀 더 깔끔하게 코드를 볼 수 있게끔 하였습니다.
( 같이 있어도 무방 )
![](https://images.velog.io/images/everytime79/post/43e4ea45-f28e-4716-bdfb-4d60415dad98/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2023.35.36.png)

---

> 201225 추가

# bounty 순서대로 나열 (랭킹?)
BountyViewController - BountyViewModel 에
var sortedList, return sortedList[index] 를 추가하였습니다.

![](https://images.velog.io/images/everytime79/post/bc2cd0df-87ec-441d-b3c4-ff7c976d2e39/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2023.43.43.png)

빌드하여 확인하면 전과는 다르게 현상금 금액이 큰 순서대로 나열됩니다. 
![](https://images.velog.io/images/everytime79/post/665cb25c-933c-426d-9b3d-a874d33d3cb5/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2023.46.10.png)
