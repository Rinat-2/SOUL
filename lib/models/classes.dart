class Classes {
  final String subject;
  final String type;
  final String teacherName;
  final DateTime time;
  bool isPassed = false;
  bool isHappening = false;

  Classes({this.subject, this.type, this.teacherName, this.time});
}

List<Classes> classes = [
  Classes(
    subject: "Android & IOS",
    type: "Online Class",
    teacherName: "Abelmazhinova D.Z.",
    time: DateTime.parse("2020-09-09 09:35:00"),
  ),
  Classes(
    subject: "Исскусственный \nинтеллект и \nнейросетевое \nуправление",
    type: "Online Class",
    teacherName: "N/A",
    time: DateTime.parse("2020-09-03 10:40:00"),
  ),
  Classes(
    subject: "Технология \nкомпьютерной \nграфики",
    type: "Online Class",
    teacherName: "Orazaeva L.I",
    time: DateTime.parse("2020-09-09 13:00:00"),
  ),
];
