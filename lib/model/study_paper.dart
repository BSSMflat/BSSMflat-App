class Paper {
  final String subject;
  final String teacher;
  final String name;
  final String time;
  final String solve;

  Paper(this.subject, this.teacher, this.name, this.time, this.solve);
}



// 구현계획(기본적으로 모든 학습지들은 미해결 List에 들어있다)
// 1. time을 String으로 받은다음 DateTime.Parse(SomeString)을 통해 DateTime으로 변환, List 2개만들기 (미해결, 기간임박)
// 2. 만약에 time이 현재시간(Datetime.now())과 비교해서 7일밖에 안남았다면 
  // -> 1. 미해결 List에 있던 값을 기간입박 List에 add()하고 ,미해결 List에 있던 값을 삭제하기(list.removeAt(index))
  // -> 2. time과 solve Text 색상을 빨간색으로 바꾸기(삼항 연산자)
// 3. 반복문 돌려서 Listview로 나타내기