# First-screen
## animate 의 매개변수(속성 정리)
- withDuration   
  입력한 시간(단위 : 초)동안 에니메이션이 진행
- delay
  입력한 시간 이후에 시작
- usingSpringWithDamping
  0 ~ 1.0 사이의 값을 지정 (튕겨나가는 정도)
- initialSpringVelocity
  애니메이션 속도 지정
- options
  애니메이션이 어떤 유형으로 움직일지 지정 (easeInOut, easeIn, easeOut, linear)
- animations
  애니메이션의 유형을 선언하며 시작위치 및 최초 크기 지정 가능 (frame, bounds, center, transfrom, alpha, backgroundColor)
- completion
  UIView.animate : 애니메이션 성공여부를 Boolean타입으로 반환
  UIView.propertyAnimator : 종료된 위치의 상태값을 나타내는 열거형 (current, start, end)
  
