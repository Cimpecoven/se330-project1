// import 'product.dart';


enum AddressType {
  billing,
  shipping,
}

class UserProfile {

  UserProfile({
    required this.firstName,
    required this.lastName,
    this.paymentInfo  = const [],
    this.address = const [],
  });

  // final int Id; // unique identifier for database: not necessary for demo code
  String firstName;
  String lastName;
  List<Address> address;
  List<PaymentInfo> paymentInfo;
}

class Address {
  Address({
    required this.type,
    required this.streetAddress,
    required this.state,
    required this.zipCode
  });

  AddressType type;
  String streetAddress;
  StatesUS state;
  String zipCode;
}

class PaymentInfo {
  // using flutter_credit_card for credit card view; this is for data storage
  PaymentInfo({
    required this.cardNumber,
    required this.expirationDate,
    required this.cardHolderName,
    required this.cvvCode,  
    required this.billingAddress,
  });

  String cardNumber;
  DateTime expirationDate;
  String cardHolderName;
  String cvvCode;
  Address billingAddress; // From user-profile
}

// (StatesUS.AL).toString().split('.').last // <- way to get string for enum
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
