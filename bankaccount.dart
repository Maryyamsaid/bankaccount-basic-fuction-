import 'dart:io';

main() {
  int? choice1;
  var balance = 1000;

  do {
    stdout.write('1: for account creation');
    print("");
    stdout.write('2: for credit');
    print("");
    stdout.write("3: for debit");
    print("");
    stdout.write("4: for balance check");
    print("");
    stdout.write("5: for exit");
    print("");
    String? choice = stdin.readLineSync();
    choice1 = int.tryParse(choice!);

    switch (choice1) {
      case 1:
        stdout.write("anter user name");
        String? username = stdin.readLineSync();
        print("");
        print("user name = $username");
        print("balance = $balance");
        print("");
        break;
      case 2:
        stdout.write('enter credit= ');
        String? credit = stdin.readLineSync();
        int? credit1 = int.tryParse(credit!);
        balance = balance + credit1!;
        print("your new balance is =$balance");
        break;
      case 3:
        stdout.write('enter your debit account');
        String? debit = stdin.readLineSync();
        int? debit1 = int.tryParse(debit!);
        if (debit1! <= balance) {
          print("balance is low");
        } else {
          balance = balance - debit1;
          print("your new balance is =$balance");
        }

        break;
      case 4:
        print("your currant balance is = $balance");
        break;
      case 5:
        print("program end");
        break;
      default:
        print("invalid");
        break;
    }
  } while (choice1 != 5);
}
