void main() {
  // إنشاء قائمة الموظفين
  List<String> employees = [];

  // إضافة الموظفين
  employees.add('Mohammed');
  employees.add('Ahmed');
  employees.add('Sara');
  employees.add('Ali');
  employees.add('Khaled');

  // عرض جميع الموظفين
  print('Employees List:');
  for (String employee in employees) {
    print(employee);
  }

  // حذف موظف من القائمة
  employees.remove('Ali');

  // طباعة القائمة بعد الحذف
  print('\nEmployees List after removal:');
  for (String employee in employees) {
    print(employee);
  }

  // إنشاء Set الأقسام
  Set<String> departments = {
    'IT',
    'HR',
    'Finance',
    'IT',
    'HR',
  };

  // طباعة محتوى Set الأقسام
  print('\nDepartments Set:');
  print(departments);

  // إنشاء Map رواتب الموظفين
  Map<String, int> salaries = {
    'Mohammed': 12000,
    'Ahmed': 9500,
    'Sara': 11000,
  };

  // طباعة الموظفين ورواتبهم
  print('\nEmployee Salaries:');
  for (var entry in salaries.entries) {
    print('${entry.key}: ${entry.value}');
  }
}
