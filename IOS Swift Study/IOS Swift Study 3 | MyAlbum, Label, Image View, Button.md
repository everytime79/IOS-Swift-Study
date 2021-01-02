## 뷰 구성

MyAlbum 구성
- Label
- Image View
- Button

---
## UIKit
UIKit은 iOS 애플리케이션의 사용자 인터페이스를 구현하고 이벤트를 관리하는 프레임워크입니다.

- UIKit 프레임워크는 제스처 처리, 애니메이션, 그림 그리기, 이미지 처리, 텍스트 처리 등 사용자 이벤트 처리를 위한 클래스를 포함합니다.
- 또한 테이블뷰, 슬라이더, 버튼, 텍스트 필드, 얼럿 창 등 애플리케이션의 화면을 구성하는 요소를 포함합니다.
- UIKit 클래스 중 UIResponder에서 파생된 클래스나 사용자 인터페이스에 관련된 클래스는 애플리케이션의 메인 스레드(혹은 메인 디스패치 큐)에서만 사용하세요.
- UIKit은 iOS와 tvOS 플랫폼에서 사용합니다.

#### UIKit 기능별 요소

1. 사용자 인터페이스
- View and Control : 화면에 콘텐츠 표시
- View Controller : 사용자 인터페이스 관리
- Animation and Haptics : 애니메이션과 햅틱을 통한 피드백 제공
- Window and Screen : 뷰 계층을 위한 윈도우 제공

2. 사용자 액션
- Touch, Press, Gesture: 제스처 인식기를 통한 이벤트 처리 로직
- Drag and Drop: 화면 위에서 드래그 앤 드롭 기능
- Peek and Pop: 3D 터치에 대응한 미리 보기 기능
- Keyboard and Menu: 키보드 입력을 처리 및 사용자 정의 메뉴 표시

#### 참고 사이트

[[부스트코스] IOS 프로그래밍](https://www.edwith.org/boostcourse-ios/lecture/17995/)
[Apple 공식 문서](https://developer.apple.com/documentation/uikit)


---

### Label

1과 2에서 Button을 넣었던 것 처럼 이번에는
뷰 컨트롤러에 Label 을 적절한 위치에 배치합니다.
Text와 사이즈, 폰트는 적절하게 설정합니다. 
( font 굵기 : Bold , Size 30.0 )
![](https://images.velog.io/images/everytime79/post/0bbc5695-b29b-4834-9f7d-876ff8e22628/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2018.12.33.png)


### Image
이번에는 동일한 방법으로 Image View 를 적절한 위치에 배치합니다.
![](https://images.velog.io/images/everytime79/post/78a4c85f-9fb6-437a-9c53-a25ef81b2a75/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2018.14.08.png)

우측 Size Inspector 를 통해 사이즈를 정해줄 수 있습니다.
( Width : 320 , Height : 320 으로 설정하였습니다. )
![](https://images.velog.io/images/everytime79/post/2688d046-1a0b-48d6-9aa5-09a58ad283aa/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2018.16.09.png)

* 예시 ) Size Inspector 에서는 대상의 좌표와 가로 세로 길이를 정해줄 수 있습니다.
( 사진 속 대상의 좌표는 x : 0 y : 0, 사이즈는 가로 115, 세로 87 인 상태입니다. )
![](https://images.velog.io/images/everytime79/post/0f39919c-6675-4f54-a617-c037c898402e/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2018.26.21.png)
* 좌표의 기준점은 다음 사진과 같습니다. ( 맨 좌측 상단 )
![](https://images.velog.io/images/everytime79/post/f71a1d8e-4673-4bdc-ac8b-cc9857431bf0/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2018.28.17.png)


라벨과 이미지, 버튼을 적절하게 설정해 줍니다.
![](https://images.velog.io/images/everytime79/post/fff3110a-8827-4978-9aa2-a1b809e2f6ab/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-09%2018.19.59.png)

---
