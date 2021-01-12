# TetrisGame

## 사용 프로그램 & 언어 
 - Xcode
 - Swift

## 시작 화면
  * 시작 버튼 ( -> 게임 화면 )
  * 정보 버튼
<img src="https://images.velog.io/images/everytime79/post/52568944-fa9e-405a-a733-6af4bbe638d6/Simulator%20Screen%20Shot%20-%20iPhone%2011%20Pro%20Max%20-%202020-12-29%20at%2022.07.02.png" width="100" height="200">

## 게임 화면
  * 랜덤으로 블럭 출력
  * 상단 다음으로 내려올 블럭 미리보기
  * 상,하,좌,우 버튼
  * 일시정지 버튼 ( 블럭과 배경음악이 일시 정지 )

<img src="https://images.velog.io/images/everytime79/post/9a674585-3fa8-44e9-81e8-2ddc2168ef42/Simulator%20Screen%20Shot%20-%20iPhone%2011%20Pro%20Max%20-%202020-12-29%20at%2022.07.12.png" width="100" height="200">

  * 일정한 속도로 내려오는 블럭

<img src="https://images.velog.io/images/everytime79/post/d6aebb76-a0aa-4f79-8a07-9fc78bfeb8d9/Simulator%20Screen%20Shot%20-%20iPhone%2011%20Pro%20Max%20-%202020-12-29%20at%2022.07.42.png" width="100" height="200">

  * 한 줄 제거시, 이펙트 발생 ( sks 파일 - fire 사용 )

<img src="https://images.velog.io/images/everytime79/post/b9941cea-298b-4f78-82ae-055f70d1be33/Simulator%20Screen%20Shot%20-%20iPhone%2011%20Pro%20Max%20-%202020-12-29%20at%2022.08.19.png" width="100" height="200">

  * 게임 오버 조건 ( 블럭의 높이가 상단 부분에 닿았을 경우 -> 오버 화면 )

<img src="https://images.velog.io/images/everytime79/post/df5ad9c8-8ac5-4b58-a0d5-42fcb7afd69f/Simulator%20Screen%20Shot%20-%20iPhone%2011%20Pro%20Max%20-%202020-12-29%20at%2022.08.31.png" width="100" height="200">

## 오버 화면
  * 파란색 ( 점수 )
  * 빨간색 ( 최고 점수 -> 디바이스 내 데이터 저장, 어플을 재실행해도 사라지지 않음 )
  * 게임 재시작 버튼
  * 시작 화면 버튼 
  
<img src="https://images.velog.io/images/everytime79/post/857203aa-ccb8-4c10-874e-56b3261136bd/Simulator%20Screen%20Shot%20-%20iPhone%2011%20Pro%20Max%20-%202020-12-29%20at%2022.08.35.png" width="100" height="200">

## 추가 업데이트
 * 블럭을 제거한 횟수가 일정 수에 도달하면 난이도 상승 ( 테스트를 위해 난이도 상승을 위한 점수의 수가 낮음 )
  1. 내려오는 블럭의 속도가 상승
  2. 난이도가 상승할 경우 그만큼 추가 점수

