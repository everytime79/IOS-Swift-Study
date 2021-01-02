## Preview

처음부터 기종을 아이폰 11 로 해두고 테스트를 해왔기 때문에 아이폰 11에서의 해상도에는 문제가 없어 보입니다. Preview 를 통해 다른 기종의 아이폰에서는 어떻게 보이는지 확인할 수 있습니다. 
우측 상단의 버튼을 눌러 Preview를 클릭하여 Preview를 확인합니다.
![](https://images.velog.io/images/everytime79/post/736f5615-8957-45c2-b928-1a336f8d6c46/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-10%2023.36.44.png)![](https://images.velog.io/images/everytime79/post/a667c571-ce17-482c-9df8-e2fe2c98af84/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-10%2023.39.03.png)
하단에는 어떤 기종으로 보고 있는지 확인할 수 있습니다. (현재는 아이폰 11 기종)
예시로 하단의 + 버튼을 통해 아이폰 12 미니를 추가해보았습니다.
![](https://images.velog.io/images/everytime79/post/f290a8b3-1eb2-4b98-9a33-e9e9584c44fb/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-10%2023.38.39.png)
![](https://images.velog.io/images/everytime79/post/3767c3d1-b0da-4708-9d41-6429853d1c68/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-10%2023.46.05.png)
아이폰 12 미니를 Preview 하였을 경우, 좌 우 비율이 맞지 않는 것을 확인할 수 있습니다.

## 오토 레이아웃
- Auto Layout이란 기존의 Frame-Based Layout과 다른 View들 간의 관계를 이용하여 View의 위치와 크기를 자동으로 결정하는 Layout System입니다.

>출처 : [ZeddiOS](https://zeddios.tistory.com/380)
참고 : [만재송님 블로그](https://thd0011.tistory.com/45), [[부스트코스] IOS 프로그래밍](https://www.edwith.org/boostcourse-ios/lecture/16848/)

- Main.storyboard 에서 사용한 Picture Label을 control 키와 함께 view로 드래그 해줍니다.
( 방식은 스토리보드에서 뷰 컨트롤러로 연결해주었던 것처럼 )
![](https://images.velog.io/images/everytime79/post/acb948fc-1f10-45c3-be39-1e3cdd249644/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-10%2023.49.17.png)
- leading Space to Safe Area
- Top Space to Safe Area
- Trailing Space to Safe Area 
총 3가지를 체크해줍니다. 
![](https://images.velog.io/images/everytime79/post/272fb54b-a71c-411d-9d3e-db1b63ff49f5/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.00.35.png)
>#### Safe Area 
특정 또는 필수적인 뷰들이 가리지 않도록 정해놓은 안전 지역입니다.
노치, 상태 바, 네이게이션 바, 탭 바 등 스크린 영역을 가리는 것을 방지하는 영역입니다.

- 3가지를 추가하고 똑같이 control 키와 함께 Picture -> Picture 로 드래그하여 Height을 클릭합니다.
![](https://images.velog.io/images/everytime79/post/aed0f25e-56fc-48f7-b2cb-10bc4b82444d/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.14.50.png)
- 우측 Inspector 에서도 체크한 것을 확인할 수 있습니다. 
![](https://images.velog.io/images/everytime79/post/5467fca7-98df-4df3-b90c-765374246dad/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.17.21.png)
- 강아지 사진에서는 위 방법과 같이 Width, Height 둘다 체크해줍니다.
![](https://images.velog.io/images/everytime79/post/fb4b30ce-f9df-48fb-bce0-2cb97fbbe21f/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.19.18.png)
- 강아진 사진의 위치도 정해주기 위해 control 키와 함께 view로 드래그합니다.
![](https://images.velog.io/images/everytime79/post/98e53cbb-68a8-4f93-84ae-48f6924f273d/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.21.58.png)
- Top Space to Safe Area
- Center Horizontally in Safe Area (x축 가운데 위치)
두 가지를 체크합니다.
![](https://images.velog.io/images/everytime79/post/defbd8c7-c199-4216-818e-979d838c3f4f/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.28.42.png)
- 만약 위 사진처럼 x 축에 대해서만 설정해주면, ![](https://images.velog.io/images/everytime79/post/de95d83f-2572-45b5-99b3-ea4505ad12df/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.28.53.png)
- 위 사진과 같이 빨간색 화살표가 뜨게 됩니다. 눌러보면![](https://images.velog.io/images/everytime79/post/2259bdde-0477-490a-838a-92c012d815de/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.29.12.png)
- Y축에 대해서도 필요하다고 알려줍니다.
- Price Label 같은 경우에는 control 키와 함께 새로고침 버튼으로 드래그 하여 Vertical Spacing, Center Horizontally 를 체크하여 줍니다.
![](https://images.velog.io/images/everytime79/post/f9e22235-cb5a-4307-bddb-b6561f00d64d/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.31.45.png)

- 4개의 대상에 대한 값
![](https://images.velog.io/images/everytime79/post/60fd7670-83ce-4931-95a6-32f448b7fb20/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.33.32.png)

#### Preview (후)
![](https://images.velog.io/images/everytime79/post/0efa07d4-0cd9-44e0-a62c-fc822a0c5a0c/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.36.15.png)
전과는 다르게 좌우 비율이 맞는 것을 볼 수 있습니다.
사진과 같이 글자가 깨지거나 여전히 맞지 않는 부분이 있다면 적절하게 수치를 맞춰줍니다.![](https://images.velog.io/images/everytime79/post/fff632f9-f1ee-4575-b63e-84c307533abe/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.46.03.png)다른 기종들을 더 추가하여 확인할 수 있습니다.![](https://images.velog.io/images/everytime79/post/17079eba-6118-454a-b004-0ab3f456b569/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.39.04.png)


## App Icon
![](https://images.velog.io/images/everytime79/post/2df9ec39-c95e-4a94-a179-9646cb7f131a/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.48.27.png)
빌드를 하고 가상머신으로 테스트를 할 때, 한번씩 홈으로 가면 비어있는 앱 아이콘을 볼 수 있습니다.

프로젝트 - Assets.xcassets - AppIcon 으로 갑니다.
![](https://images.velog.io/images/everytime79/post/8eaaf2a4-7d8e-4156-84ab-dd68ccab94d8/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.51.22.png)
다양한 빈 칸이 보이는 것을 확인할 수 있습니다.
![](https://images.velog.io/images/everytime79/post/fc3bf10e-d15f-412c-b9ea-d8577d4f68c3/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2000.52.09.png)

iPhone / iPad Notification : 상단 바에서 알림이 울릴 때 보여지는 앱 아이콘
iPhone / iPad Settings : 설정 앱을 들어갔을 때 보여지는 앱 아이콘
iPhone / iPad Spotlight : 홈 화면에서 내렸을 때 나오는 검색창에서 검색하여 나왔을 때의 앱 아이콘
iPhone / iPad App : 홈화면에서 보여지는 앱 아이콘
iPhone / iPad AppStore : 앱스토어에서 보여지는 앱 아이콘

원하는 이미지를 선택하여 우선 iPhone App 에 사진을 넣습니다. 
( 드래그 드랍으로 넣기 가능 )![](https://images.velog.io/images/everytime79/post/be86e01f-17dc-4633-9e7b-ead3cfcb09fc/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2002.11.44.png)
홈 화면 앱 아이콘을 넣고 다시 빌드하여 홈으로 가면 홈 화면에서의 앱 아이콘이 생성된 것을 확인할 수 있습니다.![](https://images.velog.io/images/everytime79/post/fab31863-acdb-4dd5-82eb-44f54e84ff1f/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2002.13.17.png)


## AppIcon Generator
앱 아이콘을 다양한 규격에 맞는 사이즈들을 자동으로 생성해주는 사이트들이 있습니다.

1. https://appicon.co/
2. https://appiconmaker.co

## Display Name
![](https://images.velog.io/images/everytime79/post/9cee4fc6-0ae1-444c-9875-69b5c79dd44f/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2002.21.30.png)
파란색 아이콘의 프로젝트를 누릅니다.
![](https://images.velog.io/images/everytime79/post/8d5a5114-adeb-4b58-9065-3bd2b84fd2c3/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2002.20.52.png)
누르고 뜨는 화면 General - Identity - Display Name 에서
홈 화면에서 보여지는 앱 이름을 수정할 수 있습니다.
![](https://images.velog.io/images/everytime79/post/23794692-8d76-4c62-b371-bd5f5c0df2e9/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2002.22.57.png)














