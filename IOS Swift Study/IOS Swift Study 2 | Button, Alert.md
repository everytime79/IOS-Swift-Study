## Button 으로 Hello 출력
1. IOS Study 1	에서 했던 것처럼 
App을 선택하고 Next
Product Name : MyAlbum ,
Interface : StoryBoard ,
Life Cycle : UIKit App Delegate , 
Language :  Swift 으로 만들어 줍니다.


#### ViewController ?
- 스크린을 관리
- 사용할 앱의 인터페이스를 관리

---

#### Button Hello 출력
1. MyAlbum 프로젝트를 만들면 Main.Storyboard가 보입니다.
![](https://images.velog.io/images/everytime79/post/1e3da525-b230-48b4-a734-f3a489588e0b/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2018.33.19.png)
2. 사진 속 우측 상단의 버튼 눌러 Assistant 를 표시해줍니다.
( storyboard 와 우측에는 해당하는 ViewController.swift 를 표시해줍니다.)![](https://images.velog.io/images/everytime79/post/57d9ad1c-8b5b-41a1-b159-30de8b9525be/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.08.18.png)![](https://images.velog.io/images/everytime79/post/10d388d6-802f-4c30-b0d3-a3e93005a890/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.09.56.png)
3. View Controller 에 넣어준 버튼을 Control 키와 함께 우측 ViewController.swift 로 드래그 해줍니다. ( 드래그 하면 라인이 생깁니다. )
![](https://images.velog.io/images/everytime79/post/35e9a074-4f55-4ea6-9f5c-23980ca05809/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.11.22.png)
4. 드래그를 하면 선택한 아이템의 방식과 Name, Type를 설정해줄 수 있습니다.
우선 Hello 라고 이름을 붙이고 Connect 시켰습니다.![](https://images.velog.io/images/everytime79/post/e386192f-a740-43fc-bfc3-e2f7ca5a0e55/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.12.18.png)
5. ViewController.swift 에 다음과 같이 코드가 생긴 것을 확인
![](https://images.velog.io/images/everytime79/post/d926928b-5818-405d-9c22-1a4a66f74ce4/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.18.34.png)

6. 생긴 func 에 수행할 코드를 입력합니다.

7. print("hello") 를 추가했습니다.

![](https://images.velog.io/images/everytime79/post/45a74545-332d-499f-ad0c-22ca38058763/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.20.40.png)
8. 빌드를 하여 가상머신으로 버튼이 잘 작동하는지 확인합니다.

![](https://images.velog.io/images/everytime79/post/f942dbcc-79f9-45f5-8745-543177d7c650/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.21.25.png)

---

## Button Alert Hello 출력
1. 다음과 같이 코드를 입력합니다.
![](https://images.velog.io/images/everytime79/post/6f2db818-4ec5-4352-8c69-f6bbd28192ce/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.28.17.png)
- 제목은 "Hello", 메시지 내용은 "Hello world", Style은 alert ![](https://images.velog.io/images/everytime79/post/e2359b08-719d-4a72-a18f-6240cacb066f/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.31.42.png)
- alert의 action은 "OK"
![](https://images.velog.io/images/everytime79/post/6749d65d-9251-4c27-80b1-878af11cb0b4/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.33.25.png)
- "OK" 설정했던 alert를 alert에 추가![](https://images.velog.io/images/everytime79/post/72fe4be6-7ed9-4a0c-a8ef-5b39124ea5df/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.34.10.png)
- present 를 통해 alert 를 출력합니다. ![](https://images.velog.io/images/everytime79/post/b2fd1f58-3f4c-4388-975f-b3eb12a148c6/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.34.17.png)
2. 빌드하여 확인합니다. 버튼을 누르면 Alert가 뜹니다. with OK![](https://images.velog.io/images/everytime79/post/7d2d6426-31cd-4a6e-b738-25a2eb65b4d5/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2019.36.36.png)
