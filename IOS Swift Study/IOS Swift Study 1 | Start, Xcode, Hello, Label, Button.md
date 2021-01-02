## 공부 시작

* 4학년 2학기 대학생이라 많이 늦은 시기라고 생각하지만, IOS 개발 공부를 하고 싶었기 때문에 늦게나마 블로그와 강의 수강과 함께 시작하게 되었습니다. 내년까지는 내 앱 하나는 출시해 보는 것이 목표입니다. 1도 모르는 0 부터 무작정 보고 따라하는 단계인지라 틀린 부분과 실수가 있을 수 있습니다.

* 블로그의 글들은 제가 수강하게 된 [패스트컴퍼스 강의](https://www.fastcampus.co.kr/)를 들으며 후에 기억하고 다시보기 위해 작성하였습니다. 

* 오타와 틀린 부분은 지적해주시면 감사하겠습니다. 

<span style="color:red">** 글에 문제가 있을 경우 알려주시면 바로 삭제하겠습니다. **</span>

## IOS 앱 개발 준비물

1. MacOS ( 맥, 맥북 ) : Big Sur
2. Xcode

## Xcode 의 4가지 영역

![](https://images.velog.io/images/everytime79/post/4c23cc72-19b7-4bca-9ae8-29cd0a886e91/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-01%2023.53.41.png)

## Xcode 시작해보기

1. 먼저 다운받은 Xcode 를 다운로드 받고 실행합니다.
2. Create a new Xcode Project 를 눌러 App을 누른 뒤 Next
![](https://images.velog.io/images/everytime79/post/b32ab8bb-dc9c-4cd4-9db6-d0015709d810/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2000.05.14.png)
3. 프로젝트의 이름을 Test 
Interface : StoryBoard ,
Life Cycle : UIKit App Delegate ,
Language :  Swift
로 세팅하고 Next
4. 저장하고 싶은 위치에 두고 만듭니다.
![](https://images.velog.io/images/everytime79/post/71432a47-d5ba-45a7-96dd-714ca5c87027/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2000.11.59.png)

## Hello World

1. 우측 상단의 + 버튼을 통해 라벨을 추가시킵니다.
![](https://images.velog.io/images/everytime79/post/c6852f09-debd-4ba9-82ac-d95e95ec87cb/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2000.14.40.png)
2. 라벨을 누르고 밖으로 원하는 위치에 드래그 드롭 시킵니다.
3. 추가한 라벨을 누른 상태에서 우측 부분을 보면 제목부터 폰트, 색상, 사이즈 등을 설정할 수 있습니다. 
![](https://images.velog.io/images/everytime79/post/4bb7f512-c46c-4aaf-bad6-dad3bd44ea95/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2000.16.38.png)

## Button

1. 라벨을 추가시킨 동일한 방법으로 우측 상단 + 에서 버튼을 가져옵니다.
![](https://images.velog.io/images/everytime79/post/a7989935-5a9a-4b5b-9a8f-24737491d1b6/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2000.22.50.png)
2. 마찬가지로 우측에서 원하는 텍스트, 사이즈, 폰트를 설정해줍니다.
![](https://images.velog.io/images/everytime79/post/d7038ed8-fc80-49cb-bbc5-e87f6871bd97/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2000.23.57.png)

## 확인하기

지금까지 추가해 보았던 라벨과 버튼을 확인하기 위해
좌측 상단의 있는 플레이 버튼을 누릅니다.
![](https://images.velog.io/images/everytime79/post/e9bac0d9-d81d-4a7b-9e84-1aba0b031682/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2000.26.20.png)
#### 원하는 기종으로 확인하는 방법
원하는 기종이나 시도해보고 싶은 기종이 따로 있다면 선택 후 빌드 (플레이 버튼) 을 누릅니다.
![](https://images.velog.io/images/everytime79/post/10e05977-6aad-4a0a-8a9e-920f28095ea7/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2000.28.28.png)![](https://images.velog.io/images/everytime79/post/e4f91bab-595a-4783-872d-ed15c74cbec0/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2000.29.00.png)

가상머신으로 구동해 본 결과
![](https://images.velog.io/images/everytime79/post/5fe0b656-3de4-433d-a3a5-fc6c446c0df7/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-02%2000.31.18.png)


## 추가 요약

1. 왼쪽 네비게이터 영역에서는 프로젝트 구조를 확인하고 Delegate에서는 코드를 storyboard 에서는 UI를 다룹니다. 
2. 우측의 바에서는 선택한 아이템의 속성을 확인할 수 있습니다. 
3. 상단의 툴바에서는 대표적으로 실행, 중단, 가상머신 혹은 가지고 있는 아이폰으로 빌드를 할 것인지 선택할 수 있는 선택 메뉴 등이 있습니다.


