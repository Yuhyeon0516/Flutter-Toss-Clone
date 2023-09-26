import 'package:toss/screen/main/tab/home/banks_dummy.dart';
import 'package:toss/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(bankShinhan, 12758295671, accountTypeName: '신한 주거래 우대통장(저축예금)');
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 968384717, accountTypeName: '저축예금');
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 5839571, accountTypeName: '저축예금');
final bankAccountToss = BankAccount(bankToss, 3230);
final bankAccountKakao = BankAccount(bankKakao, 783947917);

final bankAccounts = [
  bankAccountShinhan1,
  bankAccountToss,
  bankAccountShinhan2,
  bankAccountKakao,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountShinhan1,
  bankAccountKakao,
  bankAccountShinhan2,
  bankAccountToss,
  bankAccountShinhan3,
  bankAccountKakao,
];
