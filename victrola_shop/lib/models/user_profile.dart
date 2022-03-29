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
  String state;
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

const Map<StatesUS, String> USStates =
{
  StatesUS.AL: 'AL', // ALABAMA
  StatesUS.AK: 'AK', // ALASKA
  StatesUS.AZ: 'AZ', // ARIZONA
  StatesUS.AR: 'AR', // ARKANSAS
  StatesUS.CA: 'CA', // CALIFORNIA
  StatesUS.CO: 'CO', // COLORADO
  StatesUS.CT: 'CT',// CONNETICUT
  StatesUS.DE: 'DE', // DELEWARE
  StatesUS.DC: 'DC', // WASHINGTON DC
  StatesUS.FL: 'FL', // FLORIDA
  StatesUS.GA: 'GA', // GEORGIA
  StatesUS.HI: 'MI', // HAWAII
  StatesUS.ID: 'ID', // IDAHO
  StatesUS.IL: 'IL', // ILLINOIS
  StatesUS.IN: 'IN', // INDIANA
  StatesUS.IA: 'IA', // IOWA
  StatesUS.KS: 'KS', // KANSAS
  StatesUS.KY: 'KY', // KENTUCKY
  StatesUS.LA: 'LA', // LOUISIANA
  StatesUS.ME: 'ME', // MAINE
  StatesUS.MD: 'MD', // MARYLAND
  StatesUS.MA: 'MA', // MASSACHUSETTS
  StatesUS.MI: 'MI', // MICHIGAN
  StatesUS.MN: 'MN', // MINNESOTA
  StatesUS.MS: 'MS', // MISSISSIPPI
  StatesUS.MO: 'MO', // MISSOURI
  StatesUS.MT: 'MT', // MONTANA
  StatesUS.NE: 'NE', // NEBRASKA
  StatesUS.NV: 'NV', // NEVADA
  StatesUS.NH: 'NH', // NEW HAMPSHIRE
  StatesUS.NJ: 'NJ', // NEW JERSEY
  StatesUS.NM: 'NM', // NEW MEXICO
  StatesUS.NY: 'NY', // NEW YORK
  StatesUS.NC: 'NC', // NORTH CAROLINA
  StatesUS.ND: 'ND', // NORTH DAKOTA
  StatesUS.OH: 'OH', // OHIO
  StatesUS.OK: 'OK', // OKLAHOMA
  StatesUS.OR: 'OR', // OREGON
  StatesUS.PA: 'PA', // PENNSYLVANIA
  StatesUS.RI: 'RI', // RHODE ISLAND
  StatesUS.SC: 'SC', // SOUTH cAROLINA
  StatesUS.SD: 'SD', // SOUTH DAKOTA
  StatesUS.TN: 'TN', // TENNESSEE
  StatesUS.TX: 'TX', // TEXAS
  StatesUS.UT: 'UT', // UTAH
  StatesUS.VT: 'VT', // VERMONT
  StatesUS.VA: 'VA', // VIRGINIA
  StatesUS.WA: 'WA', // WASHINGTON
  StatesUS.WV: 'WV', // WEST VIRGINIA
  StatesUS.WI: 'WI', // WISCONSIN
  StatesUS.WY: 'WY',
};

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
