## 랜덤 숫자 -> Alert와 Label
---
### 랜덤으로 가격을 Alert

1. 변수를 하나 지정해줍니다.
CurrentValue = 0
![](https://images.velog.io/images/everytime79/post/67d105a1-8d67-4999-9183-757c6ed1b23d/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2019.04.42.png)
2. Button func 에서 
Message = "let message = "가격은 $ \(CurrentValue) 입니다." 코드를 추가해줍니다. 
![](https://images.velog.io/images/everytime79/post/3d7cbbc2-452d-421b-9104-d8c1aabfc89b/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2019.02.39.png)
3. let alert 에서 message: message로 변경해줍니다.
![](https://images.velog.io/images/everytime79/post/bec81fa0-dc36-421c-9fa0-31d672790701/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2019.02.22.png)
여기에서 빌드를 하여 버튼을 누르면 다음과 같이 출력됩니다. 
![](https://images.velog.io/images/everytime79/post/bb42f05b-1df6-4243-8792-433cc912b99f/Simulator%20Screen%20Shot%20-%20iPhone%2011%20Pro%20Max%20-%202020-12-09%20at%2019.06.14.png)
4. arc4random_uniform을 사용하여 랜덤 숫자를 출력합니다.
랜덤 프라이스 = 0~10000의 숫자 중 랜덤으로 , 뒤에서 +1 을 해줌으로써 0원이 alert 되지 않도록 해줍니다.
![](https://images.velog.io/images/everytime79/post/c5fb7d35-0883-451a-a1da-e5d3a83f99ad/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2019.09.40.png)
5. 오류 발생
위 사진과 글에 따라 코드를 입력하게 되면 다음과 같은 오류가 발생합니다.
![](https://images.velog.io/images/everytime79/post/68c49578-0daf-4e03-9aa1-ebbce2f93535/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2019.12.02.png)
이 경우는 상단에서 정해준 변수 Current Value 의 타입이 Int,
![](https://images.velog.io/images/everytime79/post/3ec907c4-7954-468c-b624-f495ed1ff2f4/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2019.11.54.png)
하단에서 정해준 randomPrice 의 타입이 UInt32 이기 때문입니다.
![](https://images.velog.io/images/everytime79/post/f562fc8e-7e1c-4c36-841a-1bcf0cd9b89c/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2019.12.11.png)
간단하게 CurrentVale = randomPrice 에서 Int로 수정해주면 됩니다.
![](https://images.velog.io/images/everytime79/post/3bf38745-5368-443c-8537-753884c10913/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2019.15.49.png)
6. 빌드
빌드를 하게 되면 첫 클릭 값은 0 후의 값들이 1~10000 랜덤 수가 출력되는 것을 알 수 있습니다. 
![](https://images.velog.io/images/everytime79/post/4d4bc802-7cd5-414e-bf6c-482c4b0be0e3/Simulator%20Screen%20Shot%20-%20iPhone%2011%20Pro%20Max%20-%202020-12-09%20at%2019.19.48.png)

---
### Button으로 Label에 가격 출력

1. control 버튼과 함꼐 ViewController.swift 로 드래그 드랍 해줍니다.
( 이름은 priceLabel 이라고 지정했습니다. )
![](https://images.velog.io/images/everytime79/post/527627b8-d833-40eb-a598-041afbc95cac/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2019.23.51.png)
2. viewController.swift 에 연결이 된 것을 확인하면, viewDidLoad 에 
priceLabel.text = "$ \(CurrentValue)" 코드를 입력합니다.
![](https://images.velog.io/images/everytime79/post/bbe6ae6e-6574-464e-bb57-943d042f9030/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2019.24.50.png)
3. Button을 누를 때마다 맞춰 가격이 변경되어야 하기 때문에 하단에 코드를 추가합니다.
![](https://images.velog.io/images/everytime79/post/6d5024f0-50b6-4872-a00b-d5f10c2286cb/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2019.29.56.png)
4. 빌드
버튼을 누를 때마다 가격 Label이 변하는 것을 확인할 수 있습니다.
![](https://images.velog.io/images/everytime79/post/a6494ce0-9116-4b63-bfd3-860b1ae2cc5a/Simulator%20Screen%20Shot%20-%20iPhone%2011%20Pro%20Max%20-%202020-12-09%20at%2019.34.47.png)




