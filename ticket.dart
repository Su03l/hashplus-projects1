import 'dart:io';

void main() {
  // استقبال بيانات المستخدم
  stdout.write('Enter your name: ');
  String name = stdin.readLineSync() ?? '';

  stdout.write('Enter your age: ');
  String? ageInput = stdin.readLineSync();
  // تحويل النوع
  int age = int.tryParse(ageInput ?? '') ?? 0;

  // التحقق من العمر
  if (age < 15) {
    print('Sorry, this movie is for ages 15 and above.');
    return;
  } else {
    print('Welcome to the Cinema!');
  }

  // اختيار نوع التذكرة
  print('\nTicket Types:');
  print('1 - Standard');
  print('2 - VIP');
  print('3 - IMAX');
  stdout.write('Choose ticket type (1-3): ');
  String? choice = stdin.readLineSync();

  int ticketPrice = 0;
  String ticketType = '';

  // استخدام switch لتحديد نوع التذكرة وسعرها
  switch (choice) {
    case '1':
      ticketType = 'Standard';
      ticketPrice = 40;
      break;
    case '2':
      ticketType = 'VIP';
      ticketPrice = 75;
      break;
    case '3':
      ticketType = 'IMAX';
      ticketPrice = 60;
      break;
    default:
      print('Invalid Ticket Type');
      return;
  }

  // إدخال عدد التذاكر
  stdout.write('Enter quantity of tickets: ');
  String? quantityInput = stdin.readLineSync();
  int quantity = int.tryParse(quantityInput ?? '') ?? 0;

  if (quantity <= 0) {
    print('Invalid quantity.');
    return;
  }

  // حساب السعر النهائي
  int totalPrice = ticketPrice * quantity;

  // استخدام Ternary Operator لتحديد الهدية
  String gift = (totalPrice >= 200) ? 'Free Popcorn' : 'No Free Popcorn';

  // طباعة الفاتورة
  print('\n========== Cinema Ticket ==========');
  print('Name: $name');
  print('Ticket Type: $ticketType');
  print('Quantity: $quantity');
  print('Total Price: $totalPrice SAR');
  print('Gift: $gift');
  print('===================================');
}
