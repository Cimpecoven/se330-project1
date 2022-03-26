import 'product.dart';


enum AddressType {
  billing,
  shipping,
}

class UserProfile {

  const UserProfile({
    required this.firstName,
    required this.lastName,
    this.paymentInfo,
  });

  final String firstName;
  final String lastName;
  final Address address;
  final List<PaymentInfo> paymentInfo;
}

class Address {
  const Address({
    required this.type,
    required this.streetAddress,
    required this.state,
    required this.zipCode
  });

  final AddressType type;
  final String streetAddress;
  final StatesUS state;
  final String zipCode;
}

class PaymentInfo {
  // using flutter_credit_card for credit card view; this is for data storage
  const PaymentInfo({
    required this.cardNumber,
    required this.expirationDate,
    required this.cardHolderName,
    required this.cvvCode,  
    required this.billingAddress,
  });

  final String cardNumber;
  final DateTime expirationDate;
  final String cardHolderName;
  final String cvvCode;
  final Address billingAddress; // From user-profile
}

enum StatesUS {
  AL, // ALABAMA
  AK, // ALASKA
  AZ, // ARIZONA
  AR, // ARKANSAS
  CA, // CALIFORNIA
  CO, // COLORADO
  CT, // CONNETICUT
  DE, // DELEWARE
  DC, // WASHINGTON DC
  FL, // FLORIDA
  GA, // GEORGIA
  HI, // HAWAII
  ID, // IDAHO
  IL, // ILLINOIS
  IN, // INDIANA
  IA, // IOWA
  KS, // KANSAS
  KY, // KENTUCKY
  LA, // LOUISIANA
  ME, // MAINE
  MD, // MARYLAND
  MA, // MASSACHUSETTS
  MI, // MICHIGAN
  MN, // MINNESOTA
  MS, // MISSISSIPPI
  MO, // MISSOURI
  MT, // MONTANA
  NE, // NEBRASKA
  NV, // NEVADA
  NH, // NEW HAMPSHIRE
  NJ, // NEW JERSEY
  NM, // NEW MEXICO
  NY, // NEW YORK
  NC, // NORTH CAROLINA
  ND, // NORTH DAKOTA
  OH, // OHIO
  OK, // OKLAHOMA
  OR, // OREGON
  PA, // PENNSYLVANIA
  RI, // RHODE ISLAND
  SC, // SOUTH cAROLINA
  SD, // SOUTH DAKOTA
  TN, // TENNESSEE
  TX, // TEXAS
  UT, // UTAH
  VT, // VERMONT
  VA, // VIRGINIA
  WA, // WASHINGTON
  WV, // WEST VIRGINIA
  WI, // WISCONSIN
  WY // WYOMING
}
