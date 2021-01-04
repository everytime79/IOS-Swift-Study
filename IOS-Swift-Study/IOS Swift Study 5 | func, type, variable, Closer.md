## 기초값 설정
4 에서 진행했던 프로젝트의 경우 처음에 0원이 뜨는 부분을 수정합니다.
코드 하단에 있었던 랜덤 프라이스 부분을 
viewDidLoad()에 추가합니다.
![](https://images.velog.io/images/everytime79/post/bcfbd0f7-c4f6-4c14-a250-dd6dd2bd7ea8/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2020.48.49.png)

사진과 같이 코드를 수정하고 빌드합니다. 초기값부터 랜덤 값으로 출력하게끔 합니다.

---
## 중복? -> func
위 내용처럼 코드를 수정하면 3줄의 코드가 중복되는 것을 확인할 수 있습니다.
코드를 중복하여 사용할 경우, 않기 위해 메소드로 뽑아 줄여줄 수 있습니다.
func 를 사용하여 메소드의 이름을 설정하고 중복되었던 코드를 추가합니다.
![](https://images.velog.io/images/everytime79/post/784ec8a5-55ff-4892-994d-f315f4b058e9/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2020.55.00.png)

사진처럼 func 코드를 입력하면 해당하던 코드를 지우고 대신 refresh() 를 추가합니다.
![](https://images.velog.io/images/everytime79/post/a38871bc-50bf-4f3e-bb02-c565ec946c6c/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2020.58.12.png)

이렇게 수정하면 앞으로도 refesh()가 필요한 경우
같은 기능이면서도 한 줄로 표현할 수 있습니다.

---
## 선택한 대상의 타입을 보고 싶을 때
4에서 CurrentValue 와 randomPrice의 타입이 다른 것처럼
선택한 대상의 타입이 궁금할 때 확인하는 방법은
키보드 option 키 + 선택할 대상을 같이 눌러주면 됩니다.
옵션 키를 누르면 ? 표시가 뜨고 뜨는 중에 대상을 눌러주면 됩니다.
![](https://images.velog.io/images/everytime79/post/5fa904b7-ec13-4eb9-a359-685563818200/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2021.04.27.png)
![](https://images.velog.io/images/everytime79/post/eb93c966-ea91-4121-af76-2129b0b33789/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2021.05.43.png)

---
## 로컬 변수와 인스턴스 변수   
*위키백과, 야곰님 블로그참고*
- Local variable [로컬 변수](https://blog.yagom.net/182/) : 메소드 안에서만 사용되는 변수, 구문 또는 함수 내에서만 사용 가능한 변수
- instance variable [인스턴스 변수](https://ko.wikipedia.org/wiki/%EC%9D%B8%EC%8A%A4%ED%84%B4%EC%8A%A4_%EB%B3%80%EC%88%98) : 클래스에서 사용되는 변수
![](https://images.velog.io/images/everytime79/post/87d44e06-c909-48a6-936f-223193ad689b/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2021.09.45.png)


---
## Closure 클로져
*[장국진님 블로그참조](https://medium.com/@jgj455/%EC%98%A4%EB%8A%98%EC%9D%98-swift-%EC%83%81%EC%8B%9D-closure-aa401f76b7ce)*
Closure = { }
실행 가능한 코드 블럭이라고 할 수 있습니다. 변수처럼 함수에 넘겨줄 수 있습니다.
- 예시로 MyAlbum 프로젝트에서 alert 의 ok 버튼을 누르고 사라졌을 때 넘겨줄 수 있습니다. ( 원래는 ok 버튼을 누르기도 전에 priceLabel의 가격이 바뀝니다. )
![](https://images.velog.io/images/everytime79/post/649ed2dc-ffc6-4bc7-b5c4-7945dae406f4/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2021.33.54.png)

위 사진에서 볼 수 있듯이, 버튼을 눌렀을 경우 refresh()가 되게끔 코드를 입력해 놓았습니다. 
여기에서 OK를 눌렀을 때의 경우의 코드는 let action ~ handler: nil) 부분입니다.
![](https://images.velog.io/images/everytime79/post/11a0227e-b2fd-4999-9cb1-7986b8e93749/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2021.36.31.png)

사진 속 코드처럼 Button을 누를 때까 아닌, OK 를 눌렀을 때 함수가 작동하도록 변경합니다.
* 위 코드에서 closure는 { action in self.refresh()} 까지입니다.

* 빌드
OK 를 누르기 전에는 priceLabel의 값이 변하지 않은 것을 확인할 수 있습니다.
![](https://images.velog.io/images/everytime79/post/6e94a4a7-816c-4571-b2d8-36bd12ac5c88/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2021.38.51.png)






