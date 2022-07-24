class Paper {
  final String subject;
  final String teacher;
  final String name;
  final DateTime time;
  final String solve;

  Paper.fromMap(Map<String, dynamic> map)
      : subject = map['subject'],
        teacher = map['teacher'],
        name = map['name'],
        time = map['time'],
        solve = map['solve'];

  @override
  String toString() => "Movie<$subject:$teacher>";
}
