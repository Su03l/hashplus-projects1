import 'dart:io';

void main() {
  // استقبال عدد الطلاب
  stdout.write('Enter number of students: ');
  String? countInput = stdin.readLineSync();
  int numberOfStudents = int.tryParse(countInput ?? '') ?? 0;

  if (numberOfStudents <= 0) {
    print('Invalid number of students.');
    return;
  }

  double totalScore = 0;

  // تكرار إدخال درجات الطلاب وحساب المجموع
  for (int i = 1; i <= numberOfStudents; i++) {
    stdout.write('Enter score for student $i: ');
    String? scoreInput = stdin.readLineSync();
    double score = double.tryParse(scoreInput ?? '') ?? 0.0;
    totalScore += score;
  }

  // حساب متوسط الدرجات
  double average = totalScore / numberOfStudents;

  // طباعة النتائج
  print('Total Score: $totalScore');
  print('Average: $average');
}
