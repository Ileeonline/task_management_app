// ignore_for_file: unused_element

class Projects {
  final String projectNo;
  final String date;
  final String projectName;
  final String projectImage;

  Projects({
    required this.projectNo,
    required this.projectImage,
    required this.date,
    required this.projectName,
  });

  get _projectName => projectName;
  get _projectImage => projectImage;
  get _date => date;
  get _projectNo => projectNo;
}

List<Projects> projectsList = [
  Projects(
      projectNo: "Project 1",
      projectImage: 'assets/images/project.png',
      date: 'October 20, 2020',
      projectName: "Front-end Development"),
  Projects(
      projectNo: "Project 2",
      projectImage: 'assets/images/project.png',
      date: 'October 24, 2020',
      projectName: "Back-end Development")
];
