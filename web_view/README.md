# flutter

<br>

### stateful, stateless 대해

flutter 공부를 시작하며 처음 공부한 것이 statelessWidget을 상속하여 홈 화면을 꾸미는 것이 였다.

처음이라 생각을 하지 않고 무작정 따라 치면서 화면을 그렸는데 문뜩 이 개념이 궁금하게 되었고 
stateless 가 있으면 stateful도 있을꺼란 생각을 가지게 되었다.

> State is whatever data you need in order to rebuild your UI at any moment in time.
State는 언제든지 당신의 UI를 리빌드하기 위해 필요한 어떤 데이터 입니다.

결국 state란 내 앱의 겉 모습을 바꿀 수 있는 데이터

Stateful : state에 변화가 생기면 같이 빌드되는 위젯

Stateless : state에 변화가 생겨도 바뀌지 않는 위젯

간단하게 정리하고 stateful 개념이 더 중요해 보이기 때문에 stateful 개념이 나오면 다시 정리하겠다.

### controller
- UI 컴포넌트의 상태와 동작을 관리할 때 자주 사용되는 개념
- UI 요소와 기본 로직 혹은 데이터 사이의 중개자 역할을 한다.



