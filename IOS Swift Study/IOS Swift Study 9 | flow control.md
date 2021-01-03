## Flow Control
> 출처 및 참고
1. [민소네](http://minsone.github.io/mac/ios/swift-control-flow-summary)
[batterflyyin](https://batterflyyin.tistory.com/24)


작업을 여러번 수행할 수 있는 **for와 while 반복문**, 

특정 조건에 따라 분기시켜 실행하는 **if, guard, switch문**, 

실행 흐름을 코드의 다른 부분으로 이동시키는 **break와 continue문**

**for-in 반복문**을 지원하여 쉽게 배열, 딕셔너리, 범위, 문자열 등 순서를 가진 것들을 쉽게 반복하여 사용 가능

swift의 **switch**문은 C 언어 **switch**문 보다 더 강력. 
Swift에서 switch문은 여러 조건들을 다른 패턴들과 일치할 수 있습니다.
예를 들어, 범위, 튜플, 특정 타입으로 캐스팅 등이 있습니다. switch에서 조건에 맞는 값은 임시 상수나 변수에 저장하여 조건문 내부에서 사용할 수 있으며, 복잡한 조건문을 각각의 케이스에 where절과 함께 표현할 수 있습니다.

**case문** 내에 임시 상수나 변수를 할당하여 사용할 수 있고, 복잡한 조건은 where 절을 각 case에 사용하여 표현할 수 있습니다.


### While

![](https://images.velog.io/images/everytime79/post/a10a524d-4f93-4278-bae8-a4cff0b5f7c0/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2017.50.34.png)

### Repeat While

![](https://images.velog.io/images/everytime79/post/539da689-9bf2-4010-b129-22e0f56773e7/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2017.51.18.png)

### While & Repeat While

![](https://images.velog.io/images/everytime79/post/c7fe3371-eba7-46ee-9dc4-88ce9ebebebf/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2017.53.35.png)
- While : 조건 > 코드 수행 > 조건 > 코드 수행
- Repeat : 코드 수행 > 조건 > 코드 수행 > 조건

### for loop
- 0...10 ( 0부터 10까지 )

![](https://images.velog.io/images/everytime79/post/588f1a67-4370-4465-a13a-fdb22c9176ba/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.01.28.png)

- 0..<10 ( 0부터 9까지 )

![](https://images.velog.io/images/everytime79/post/d9477877-501e-4669-b435-3a868e90e450/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.03.14.png)

- 우측에 화면 표시를 눌러 그래프로 확인할 수 있습니다.

![](https://images.velog.io/images/everytime79/post/d575681c-ffa0-4f6f-a221-210a7ff4a799/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.05.29.png)

#### 사용하지 않은 컨스턴트
- 다음 사진과 같이 사용하지 않은 컨스턴트에 대해 Warning이 뜹니다.
- _ (언더바) 를 사용하여 대체할 수 있습니다. (값은 동일)

![](https://images.velog.io/images/everytime79/post/d5ba02fe-a845-4338-a7ea-70cee38e19f1/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.18.05.png)

![](https://images.velog.io/images/everytime79/post/c8771dfa-993b-4fce-b555-bae343843186/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.18.34.png)

#### 특정 수만 print
- 예시 range = 0...10
- 짝수 print

![](https://images.velog.io/images/everytime79/post/f5897c1d-1b63-4958-97e9-f9f9c2d6359d/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.23.58.png)

- where 을 사용하여 짝수 print
![](https://images.velog.io/images/everytime79/post/f571e25e-c712-4531-873c-8879ba60b3d9/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.25.51.png) 

- 특정 수를 제외하고 print
![](https://images.velog.io/images/everytime79/post/2e89a67c-3e07-4b3b-a744-1bfa30d63300/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.28.18.png)

- 중첩해서 사용 ( 구구단 )
![](https://images.velog.io/images/everytime79/post/a7ccd910-a89c-499c-a621-80e1201a18cb/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.32.04.png)

### Switch
- 여러 case 에 대해 코드를 수행할 수 있습니다.
- 각각의 경우 또는 상태에 대해 case를 통해 나타낼수 있습니다.
- case 상태 끝에 콜론 ':'을 붙여 패턴을 종료합니다.
- 하나의 case문이 종료되면 switch문이 종료됩니다.
- switch문은 모든 경우를 커버하기 위해서 마지막에 default 키워드를 사용해야 한다.
(단, default 키워드 없이도 모든 경우가 커버 되었다면, default 키워드가 없어도 된다.)

- 사용 예시
![](https://images.velog.io/images/everytime79/post/85ae8430-01f0-4874-8c53-d28d055e72a4/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.37.30.png)

- string 문자 -> case
![](https://images.velog.io/images/everytime79/post/50174e1d-53c9-4262-a435-a95b0c7ada3c/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.53.34.png)

- range 를 사용하여 case 사용이 가능합니다.
![](https://images.velog.io/images/everytime79/post/a6f19f1d-cf1d-41f2-9ef4-adfa9aaf291e/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.40.49.png)

- where 사용
![](https://images.velog.io/images/everytime79/post/ec2f0cb0-0414-417b-906e-7fcdb7d0be42/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.55.46.png)

- , (쉼표) 를 사용해서 하나의 case에 여러 값을 넣어줄 수 있습니다.
![](https://images.velog.io/images/everytime79/post/15e66cfa-2835-4175-85ac-ea44f16d2934/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.47.11.png)

- 튜플 -> case
![](https://images.velog.io/images/everytime79/post/48638f2d-6b92-4241-b2c6-f6596d8bcf26/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2018.51.40.png)
![](https://images.velog.io/images/everytime79/post/ae061370-cae9-4bb1-8a66-0f42f501a570/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-12-18%2019.00.22.png)

