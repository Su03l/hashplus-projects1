import 'dart:io';

// عرض الغرف المتاحة
void showRooms(List<int> rooms) {
  print('\nAvailable Rooms\n');
  if (rooms.isEmpty) {
    print('No Available Rooms');
  } else {
    for (int room in rooms) {
      print(room);
    }
  }
}

// طلب رقم الغرفة للحجز
int bookRoom() {
  print('Enter Room Number:');
  String? input = stdin.readLineSync();
  return int.tryParse(input ?? '') ?? 0;
}

// طلب رقم الغرفة للإلغاء
int cancelRoom() {
  print('Enter Room Number:');
  String? input = stdin.readLineSync();
  return int.tryParse(input ?? '') ?? 0;
}

// عرض الحجوزات
void showBookings(List<int> bookings) {
  if (bookings.isEmpty) {
    print('\nNo Bookings');
  } else {
    print('\nMy Bookings\n');
    for (int room in bookings) {
      print(room);
    }
  }
}

void main() {
  // قائمة الغرف المتاحة
  List<int> availableRooms = [101, 102, 103, 104, 105];

  // قائمة الغرف المحجوزة
  List<int> bookedRooms = [];

  while (true) {
    // عرض القائمة الرئيسية
    print('\n========== HOTEL SYSTEM ==========\n');
    print('1. Show Available Rooms');
    print('2. Book Room');
    print('3. Cancel Booking');
    print('4. Show My Bookings');
    print('5. Exit');
    stdout.write('\nChoose: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        // عرض الغرف المتاحة
        showRooms(availableRooms);
        break;

      case '2':
        // حجز غرفة
        int roomNumber = bookRoom();
        if (availableRooms.contains(roomNumber)) {
          availableRooms.remove(roomNumber);
          bookedRooms.add(roomNumber);
          print('\nRoom Booked Successfully');
        } else {
          print('\nRoom not available');
        }
        break;

      case '3':
        // إلغاء الحجز
        int roomNumber = cancelRoom();
        if (bookedRooms.contains(roomNumber)) {
          bookedRooms.remove(roomNumber);
          availableRooms.add(roomNumber);
          availableRooms.sort();
          print('\nBooking Cancelled');
        } else {
          print('\nBooking not found');
        }
        break;

      case '4':
        // عرض الحجوزات
        showBookings(bookedRooms);
        break;

      case '5':
        // الخروج من البرنامج
        return;

      default:
        // خيار غير صحيح
        print('\nInvalid choice');
        break;
    }
  }
}
