# Bounty List
- 원피스 현상금 리스트
- 이미지, 라벨
- 2개의 View Controller
## Table View

1. 새 프로젝트를 생성합니다.
Main.storyboard 에서 + 버튼을 통해 
Table View를 추가합니다.
![](https://images.velog.io/images/everytime79/post/bd1c6cee-e2d4-4b21-92fa-14632b329971/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2014.22.25.png)

2. 적당히 테이블 뷰의 넓이를 넓혀준 후, control 키와 함께 Table View 에서 View 로 드래그하여 auto Layout을 설정해줍니다.
(드래그를 한 후에 Shift 버튼을 함께 사용하면 한번에 클릭이 가능) 
![](https://images.velog.io/images/everytime79/post/e5b07cae-cfde-41b1-a304-5f6ecb02d913/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2014.25.50.png)

3. Table View 의 데이터를 표시해줄 Table View Cell을 추가합니다.
![](https://images.velog.io/images/everytime79/post/84857c01-9ea6-4c12-bd5d-ca27af5fd845/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2014.29.57.png)
![](https://images.velog.io/images/everytime79/post/05d10ea4-a2ce-4518-af4a-08e4c08d0c1b/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2014.30.16.png)

4. 빌드를 통해 확인합니다.
![](https://images.velog.io/images/everytime79/post/21f4187c-de9e-4509-8a47-d44d5ef4d3e9/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2014.32.13.png)

---

- 보여줄 테이블 뷰의 셀 개수?

```swift
func tableView(_ tableView: UITableView, numberofRowsInSection section: Int) -> Int {
	return nameList.count
}
```

- 셀의 표현

```swift
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
	guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else{
    	return UITableViewCell()
	}
	
    //img, name, bounty
    let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
    cell.imgView.image = img
    cell.nameLabel.text = nameList[indexPath.row]
    cell.bountyLabel.text = "\(bountyList[indexPath.row])"
    return cell
}
```

- 셀이 클릭되었을 때

```swift
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
	print("\(indexPath.row)")
    performSegue(withIdentifier: "showDetail", sender: indexPath.row)
}
```

---

### ViewController: DataSource, Delegate

5. ViewController로 가서 DataSource, Delegate 를 추가합니다.
![](https://images.velog.io/images/everytime79/post/6d35fdc0-3b16-487b-9855-fb183cfb8289/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.12.28.png)

6. 우측 경고 문구에서 fix 를 눌러 protocol을 추가시킵니다.
![](https://images.velog.io/images/everytime79/post/f2777e54-f5a5-4744-9f50-7a4071973ba6/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.12.39.png)
![](https://images.velog.io/images/everytime79/post/91c595ce-6a9c-43f2-8be2-fca33f0c6b91/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.17.00.png)

7. Table View Cell 의 Identifier을 cell이라고 정해줍니다.
![](https://images.velog.io/images/everytime79/post/77e51791-9dac-4aec-a962-3109deabad81/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.19.46.png)

### UITableViewDataSource

8. 다음 사진과 같이 ViewController에 코드를 추가합니다.
![](https://images.velog.io/images/everytime79/post/44d26efe-cebc-4443-8020-728ff74ac252/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.22.22.png)

9. Control 키와 함께 Table View 에서 ViewController 로 드래그하고, dataSource, delegate를 체크해줍니다.
![](https://images.velog.io/images/everytime79/post/530d03f7-fce9-46aa-99f4-3ac982361640/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.23.06.png)
![](https://images.velog.io/images/everytime79/post/94d27452-8484-43e3-af07-1925818d4813/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.23.38.png)

10. 우측 바 Outlets에서 연결된 것을 확인할 수 있습니다.
![](https://images.velog.io/images/everytime79/post/3bbca116-4808-4422-ae7d-880f7ff5b406/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.28.05.png)

11. 확인을 위해 cell 에서 Accessory - Checkmark 를 추가합니다.
![](https://images.velog.io/images/everytime79/post/871c2e57-110e-45ca-9637-e7e53b35f5c8/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.34.26.png)

12. 빌드하여 확인
![](https://images.velog.io/images/everytime79/post/a204d3a5-54dc-421b-a27d-9855d1a6668f/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.35.53.png)

---

### UITableViewDelegate

13. 다음 사진과 같이 코드를 추가합니다.
![](https://images.velog.io/images/everytime79/post/8fc9bede-7cc9-45db-889b-f8d8775a169a/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.40.39.png)

14. 클릭이 되었음을 확인하기 위해 print를 추가합니다.
몇 번째 cell이 클릭되었는지 확인하기 위해 indexPath.row 를 받아옵니다.
![](https://images.velog.io/images/everytime79/post/76f77614-34f0-42c6-8983-f0c194c66227/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.40.54.png)

15. 빌드하여 확인 
(첫 번째 index 값은 0이기 때문에 첫 번째 cell = 0, 두 번째 cell = 1)
![](https://images.velog.io/images/everytime79/post/2b4045a6-b4e9-479d-b950-9cbe76e1f140/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.41.52.png)

16. cell의 개수를 늘려서 확인해봅니다.
![](https://images.velog.io/images/everytime79/post/324ce7fb-ff55-4efe-963c-6fae286b5d70/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.45.13.png)
![](https://images.velog.io/images/everytime79/post/e86a8983-2e99-4bd1-ac6e-9ce18767dd68/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.45.46.png)

---

### Custom Cell

17. ViewController에 코드를 추가합니다.
![](https://images.velog.io/images/everytime79/post/13064b12-e121-4104-9081-32738c3a23fa/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.53.28.png)

18. Main.storyboard - cell - identity inspector 에서 class를 ListCell로 설정합니다. 
![](https://images.velog.io/images/everytime79/post/27f91e05-776a-49a6-9c40-ae687a20d27d/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.54.57.png)

19. 확인을 위해 추가하였는 Checkmark를 해제합니다.
![](https://images.velog.io/images/everytime79/post/942a92d5-f586-4450-8f81-b1377c802cb0/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.56.52.png)

20. 다음과 같이 cell과 Table View의 높이를 설정합니다.
![](https://images.velog.io/images/everytime79/post/788908ba-dfda-4ad9-8179-39fc888bcc4f/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.58.59.png)
![](https://images.velog.io/images/everytime79/post/b057958f-2d94-41ba-abba-bb6d0c365e46/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2015.59.19.png)

21. cell을 누르고 + 버튼을 통해 UIImageView, Label 을 추가합니다.
(원하는 모양의 Cell)![](https://images.velog.io/images/everytime79/post/53c7228a-f4fe-416d-b702-4cb140a9c9f2/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2016.02.53.png)

22. AutoLayout을 잡아줍니다. 
- imageView ( Img View )![](https://images.velog.io/images/everytime79/post/2aaab8be-7184-4905-b186-88b33fadfa21/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2016.17.55.png)

- label 1 ( NameLabel ) ![](https://images.velog.io/images/everytime79/post/a6d333ce-3827-44cc-8d6a-6ac053702a75/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2016.18.09.png)

- label 2 ( BountyLabel )![](https://images.velog.io/images/everytime79/post/35a111df-7c24-4f1f-8f70-0c5ff5f90c2e/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2016.18.21.png)
![](https://images.velog.io/images/everytime79/post/bfa73ae7-1c53-4e48-9545-96d141d91bec/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2016.19.06.png)

23. imgView, nameLabel, bountyLabel을 각각 해당하는 곳에 연결해줍니다.
(빈 원을 잡고 드래그 하여 해당하는 곳에 드래그 드랍합니다.)
![](https://images.velog.io/images/everytime79/post/05f15bc5-e24d-4bf3-bf2c-faee2b47f3b2/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2016.23.39.png)

24. ViewController 상단에 nameList, bountyList를 추가시킵니다.

```
    let nameList = ["브룩","쵸파","프랑키","루피","나미","로빈","상디","조로"]
    let bountyList = [83000000,100,94000000,1500000000,66000000,130000000,330000000,320000000]
```

25. 5 로 설정해주었던 cell의 개수를 bountyList의 개수만큼으로 설정합니다.
![](https://images.velog.io/images/everytime79/post/93143fde-a9a3-46dd-872e-2cb4d84701b2/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2016.42.16.png)
![](https://images.velog.io/images/everytime79/post/25fa1b43-7509-45ef-bd72-4f313f65f09d/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2016.42.27.png)

26. 프로젝트 - Assets 폴더에 필요한 .jpg 파일을 넣어줍니다.
nameList에 있는 인물과 사진이 맞게 이름을 똑같이 정해줍니다.
![](https://images.velog.io/images/everytime79/post/941301a7-c4ae-43dd-9964-9d93dcbc4a76/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2016.57.31.png)

27. UITableViewDataSource 부분을 수정합니다.
![](https://images.velog.io/images/everytime79/post/c3852581-afda-481d-8c0f-f5c5d278a054/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2017.02.41.png)

28. 빌드하여 확인
![](https://images.velog.io/images/everytime79/post/69284158-ae7c-4050-a5db-a70c585566ac/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2017.04.01.png)


>guard let과 if let의 차이점 
참고 : [레나참나](https://velog.io/@dev-lena/guard-let%EA%B3%BC-if-let%EC%9D%98-%EC%B0%A8%EC%9D%B4%EC%A0%90)

29. guard 를 사용해서 코드를 수정할 수 있습니다.
![](https://images.velog.io/images/everytime79/post/387e4ae9-4e09-4568-a797-b124bf0b1abc/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2017.06.03.png)

### Present ViewController

30. DetailViewController.swift 파일을 추가합니다.
(커맨드(⌘) + n 누르면 빠르게 생성할 수 있습니다.)

31. Main.storyboard 에서 + 버튼을 통해 view Controller 를 추가합니다.
![](https://images.velog.io/images/everytime79/post/02880ba1-d180-4525-aa8a-daa56bd5b06a/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2017.50.59.png)
![](https://images.velog.io/images/everytime79/post/2488b8f7-03d1-4d01-bda3-d983eeb29af4/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2017.51.13.png)

32. 새로 생성한 view Controller를 DetailViewController와 연결해줍니다.![](https://images.velog.io/images/everytime79/post/1e063d6e-4602-4652-9ff0-55ae654ad20d/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2017.54.52.png)

### closs (feat.dismiss)

33. Assets 폴더에 닫기 버튼의 이미지 (close.jpg) 를 추가합니다.
![](https://images.velog.io/images/everytime79/post/63bd2294-a09e-409c-aa85-def4ac88dd27/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2017.57.51.png)

34. '+' 버튼을 통해 button을 추가하고, Image = close
(close.jpg 혹은 닫기 버튼 이미지의 이름) 로 설정해줍니다.![](https://images.velog.io/images/everytime79/post/2fbd801d-6ad4-4d21-8c1e-982ddaa2a145/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2017.57.18.png)

35. 버튼의 크기와 AutoLayout을 맞춰줍니다.
![](https://images.velog.io/images/everytime79/post/ea204812-aed6-4f55-b4e1-74db5a9a606f/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2018.11.51.png)

![](https://images.velog.io/images/everytime79/post/59798dfe-97c3-48a4-9df4-c83bfa970808/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2018.12.28.png)

36. Control 키와 함께 Button을 DetailViewController와 연결해줍니다.
![](https://images.velog.io/images/everytime79/post/26ad2583-19b4-40c6-bd9f-a03ec274498e/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-20%2022.49.12.png)

37. 창을 닫는 효과를 주기 위해 dismiss를 합니다.
![](https://images.velog.io/images/everytime79/post/c197473c-ef65-4f87-a81b-47cc59e5575c/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2001.50.27.png)

### performSegue

38. Bounty View Controller를 누르고 Control 키와 함께 오른쪽 Detail View  Controller 로 드래그 & 드랍을 합니다.
![](https://images.velog.io/images/everytime79/post/e60f8928-8682-47b5-ac6a-4a07e6a53513/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-24%2018.44.03.png)

39. 드래그 & 드랍 후 Present Modally 를 선택합니다.![](https://images.velog.io/images/everytime79/post/a30118f1-1ff0-47db-b43b-314058bb3a9c/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-24%2018.45.03.png)

40. 연결된 Segue를 클릭하고 Identifier를 showDetail로 정해줍니다.![](https://images.velog.io/images/everytime79/post/0e3a6039-6401-4d52-84d1-eb9bcb51267c/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-24%2018.48.46.png)

41. BountyViewController.swift 로 돌아와서 performSegue를 입력합니다. (위에서 정해준 "showDetial" Segue 선택)
![](https://images.velog.io/images/everytime79/post/87e36a30-f114-4097-978b-ee0ff1fcd088/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2001.38.02.png)

42. 빌드하여 확인합니다.![](https://images.velog.io/images/everytime79/post/7205b212-0d28-4f1b-b618-93ee16d3a229/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2001.40.31.png)

43. 특정 Cell을 클릭했을 때, 클릭 효과로 gray 색상을 보여주는 효과를 없애고 싶다면, 
Cell - Selection - None 을 선택해줍니다.
![](https://images.velog.io/images/everytime79/post/a52f8589-3c6b-493b-8fc8-39071ae9a13e/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2001.40.31.png)
![](https://images.velog.io/images/everytime79/post/6486e3e5-659d-45bc-ade0-b872e652661c/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2001.44.53.png)

### updateUI()

44. 특정 cell을 눌렀을 때 해당 cell을 자세히 볼 viewcontroller를 꾸며줍니다.
(이미지, 라벨, 가격 등)![](https://images.velog.io/images/everytime79/post/2613f492-1483-4b92-a236-711fa71e8d89/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2002.01.40.png)

45. 앞서 BountyViewController에서 했던 것 처럼 DetailViewController에서도 코드를 입력하고 해당하는 곳에 연결해줍니다. 
**(23번 참조)**
![](https://images.velog.io/images/everytime79/post/8a87398e-3954-4628-998c-9cc30f76dec1/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2002.03.42.png)

46. 먼저 DetailViewController가 데이터를 받을 준비를 해줍니다.
![](https://images.velog.io/images/everytime79/post/aacab703-0dbf-4588-b555-a366a903857e/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2002.20.25.png)

### prepare(for segue:)

47. BountyViewController 에서 -> DetailViewController로 값을 전달할 준비를 합니다. BountyViewController의 func tableView - perforSegue에서 sender를 indexPath.row로 값을 변경합니다. 
(Cell을 선택했을 때 우리는 row 의 값을 알 수 있기 때문에 indexPath.row)![](https://images.velog.io/images/everytime79/post/2295a47a-bd94-4946-a292-8879566efcda/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2002.28.51.png)

48. 추가로 BountyViewController에 
**'override func prepare(for segue: UIStoryboardSegue, sender: Any?)'** func을 추가합니다.
(설명은 사진 속 주석)
![](https://images.velog.io/images/everytime79/post/418e378c-4b7d-450d-be51-ccb3e16c8f7e/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2002.31.54.png)

49. 빌드하여 값이 잘 전달되는지 확인합니다.
![](https://images.velog.io/images/everytime79/post/b39b2bc0-7070-4c0a-93ef-64983918120c/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-25%2002.33.56.png)
