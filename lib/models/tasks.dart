// ignore_for_file: unused_element

class Tasks {
  final String taskName;
  final String days;
  final String taskImage;

  Tasks({
    required this.taskName,
    required this.taskImage,
    required this.days,
  });

  get _taskName => taskName;
  get _taskImage => taskImage;
  get _days => days;
}

List<Tasks> tasksList = [
  Tasks(
      taskName: "Design Changes",
      taskImage: "assets/images/task.png",
      days: '2 days ago'),
  Tasks(
      taskName: "Design Changes",
      taskImage: "assets/images/task.png",
      days: '2 days ago'),
  Tasks(
      taskName: "Design Changes",
      taskImage: "assets/images/task.png",
      days: '2 days ago'),
  Tasks(
      taskName: "Design Changes",
      taskImage: "assets/images/task.png",
      days: '2 days ago'),
  Tasks(
      taskName: "Design Changes",
      taskImage: "assets/images/task.png",
      days: '2 days ago'),
  Tasks(
      taskName: "Design Changes",
      taskImage: "assets/images/task.png",
      days: '2 days ago'),
];
