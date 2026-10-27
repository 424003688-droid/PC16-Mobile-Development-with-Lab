class Student {
  String name;
  String studentId;
  final List<double> _grades = [];

  Student(this.name, this.studentId);

  List<double> get grades => _grades;

  void addGrade(double grade) {
    if (grade >= 0 && grade <= 100) {
      _grades.add(grade);
    }
  }

  double getAverage() {
    if (_grades.isEmpty) return 0.0;
    double sum = _grades.reduce((a, b) => a + b);
    return sum / _grades.length;
  }

  void printRecord() {
    print('Student: $name | ID: $studentId | Average: ${getAverage().toStringAsFixed(2)}');
  }
}

void main() {
  Student student1 = Student('Alice Santos', 'NTC-2026-001');
  Student student2 = Student('Bob Reyes', 'NTC-2026-002');

  List<Student> enrolledStudents = [student1, student2];

  student1.addGrade(88.5);
  student1.addGrade(92.0);
  student1.addGrade(85.0);

  student2.addGrade(78.0);
  student2.addGrade(82.5);
  student2.addGrade(90.0);

  for (var student in enrolledStudents) {
    student.printRecord();
  }
}
