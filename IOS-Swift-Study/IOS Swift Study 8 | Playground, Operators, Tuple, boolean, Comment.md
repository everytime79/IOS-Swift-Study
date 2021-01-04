## Swift Playground
- Xcode 12.2 버전에서 PlayGround가 시작 메뉴에 없는 것을 볼 수 있습니다.![](https://images.velog.io/images/everytime79/post/ba2871bf-0b68-422b-a751-476c8a3bd914/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2020.55.05.png)

- Xcode 를 실행 후, 상단 바에서 File - New - Playground를 클릭하여 생성합니다.
![](https://images.velog.io/images/everytime79/post/8a37423c-8da4-4fe5-b6bb-b5d92e1e1b55/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2020.56.14.png)

- Blank - Next
![](https://images.velog.io/images/everytime79/post/83250ead-6cfc-4d32-8f25-420c5ec606a6/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2020.56.32.png)

- 매 줄마다 ► 버튼으로 실행할 수 있습니다.![](https://images.velog.io/images/everytime79/post/26985307-c1e7-4097-885d-01d882f49c45/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.00.11.png)

- Study 4 에서 사용했던 랜덤 숫자 출력을 사용할 수 있습니다.
![](https://images.velog.io/images/everytime79/post/262f0932-688e-4ed0-b214-a54b5009c5e6/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.04.32.png)

### 사칙연산 : Arithmetic
간단한 사칙연산을 사용할 수 있습니다.
- 덧셈 ( + )
- 뺄셈 ( - )
- 곱셉 ( * )
- 나눗셈 ( / )
![](https://images.velog.io/images/everytime79/post/2593e64e-654b-4c20-88e1-840926cebbb2/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.12.05.png)

### 나머지 : 연산 Remainder 
- % 를 사용하여 나머지를 계산할 수 있습니다.
![](https://images.velog.io/images/everytime79/post/74da698f-bc40-4f4a-a28a-b3ce893e1929/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.17.32.png)

### 비교 연산 : Comparison
해당 연산이 맞으면 True, 틀리면 False 라고 출력합니다.
- 크다 ( a > b )
- 작다 ( a < b )
- 크거나 같다 ( a >= b )
- 작거나 같다 ( a <= b )
- 같다 ( a == b )
- 같지않다 ( a != b )
![](https://images.velog.io/images/everytime79/post/b59da09f-a48c-4c74-88cb-dbdccdae475f/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.20.51.png)

### 범위 연산 : Range
a...b 형식 -> a부터 b까지 
예시 0...5 -> 0,1,2,3,4,5
- for in 과 함께 사용할 수도 있습니다.
![](https://images.velog.io/images/everytime79/post/3eeacb5f-2c2e-4741-988b-de8214fc06b4/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.25.59.png)
![](https://images.velog.io/images/everytime79/post/fc31464b-9276-443b-bd37-6fec266420cc/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.25.43.png)

>참고 : [The Swift Language Guide (한국어) - 기본연산자 편](https://jusung.gitbook.io/the-swift-language-guide/language-guide/02-basic-operators#assignment-operator)

### 튜플 Tuple
- 튜플은 어떠한 값들의 묶음입니다. 배열과 비슷하지만, 배열과는 다르게 길이가 고정되어 있습니다. 값에 접근할 때에도 [] 대신 .을 사용합니다.
![](https://images.velog.io/images/everytime79/post/070828f5-409b-433e-a338-390bb020c069/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.44.06.png)![](https://images.velog.io/images/everytime79/post/86b2dba9-b385-4d59-86fc-2a33f387c5ed/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.44.14.png)![](https://images.velog.io/images/everytime79/post/cbedd343-55c8-482d-9757-503a81f97d4b/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.44.22.png)
- 다른 타입을 섞어도 됩니다.![](https://images.velog.io/images/everytime79/post/8c545868-22a2-4b8a-969a-e79bb0ed27b0/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.50.49.png)
- option (⌥) 키와 함께 test 튜플을 누르면 튜플 안의 타입들을 한 눈에 볼 수 있습니다.![](https://images.velog.io/images/everytime79/post/149abaae-3ebf-485e-9d8f-b041f1c9edfe/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.51.06.png)


>참고 : [40시간만에 Swift로 iOS 앱 만들기 - 튜플 편](https://devxoul.gitbooks.io/ios-with-swift-in-40-hours/content/Chapter-3/tuples.html)

### 불 : bool , 불리언 :boolean

>참고 : [greatpapa.tistory](https://greatpapa.tistory.com/35)

- true 와 false 값을 가집니다.
![](https://images.velog.io/images/everytime79/post/f0868adb-dbd7-439e-a812-12946ad343aa/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2022.03.41.png)

- option (⌥) 키와 함께 누르면 타입을 볼 수 있습니다.![](https://images.velog.io/images/everytime79/post/a16fa7a0-b0a6-495b-878e-4b45df6808b5/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2022.03.19.png)

- 사용 예시
![](https://images.velog.io/images/everytime79/post/302589f2-45ac-41ea-9760-279ce4ceaa75/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2023.14.17.png)![](https://images.velog.io/images/everytime79/post/d95ba9d0-66a0-4b29-baee-774b997255a3/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2023.16.24.png)
- 이름 비교 예시![](https://images.velog.io/images/everytime79/post/df0084e1-f1ef-4cc2-bc48-f84da941e0b4/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2023.18.56.png)

### 주석
-  주석 단축키
드래그한 라인 또는 커서의 해당 라인에서 
Command (⌘) + / (슬래쉬) 키를 동시에 누르면 주석 처리를 해줍니다.![](https://images.velog.io/images/everytime79/post/9d98304b-10db-4373-951f-217866d0a306/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.05.47.png)

- 여러 줄 주석
다음 사진과 같이 /별 (내용 )별/을 사용하여 여러 줄을 한번에 주석 처리할 수 있습니다.
![](https://images.velog.io/images/everytime79/post/cf631312-d8e4-4174-bdfe-a7359588283a/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-11%2021.09.20.png)






