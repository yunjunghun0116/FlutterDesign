# DailyExercise&Meditation

1. Button위젯처럼 클릭시 이벤트가 발동함을 보여주기 위해서는(CategoryCard에서 사용)
    1) InkWell로 감싼후 onTap에 Function을 집어넣는다.
    2) Material로 한번더 감싼 후 color:Colors.transparent처럼 색상을 주게되면 이벤트가 보이게된다
2. LayoutBuilder를 통해 다양한 형식으로 width를 설정할 수 있다. -> 반응형 위젯 생성가능(Wrap으로 감싸줘야함)
    1) 컴포넌트를 LayoutBuilder로 감싼다.
    2) builder의 입력값을 (context,constraint)로 설정한다. -> constraint를 통해 부모위젯에서 사용할 수 있는 width/height를 넘겨받는다.
    3) 이를 constraint.maxWidth/2 접근해서 자식위젯의 크기를 설정한다.

## 결과물

![ui](https://user-images.githubusercontent.com/76200940/139385026-e4a44d14-efd5-40be-9857-5e8344e3a4d1.png)
