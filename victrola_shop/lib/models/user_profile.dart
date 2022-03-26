class UserProfile {

  const UserProfile({
    required this.firstName,
    required this.lastName,
    // required this.email,
    // required this.password
  });

  final String firstName;
  final String lastName;
  final Address address;
  final PaymentInfo paymentInfo;
}

class Address {
  final AddressType type; // either billing or shipping
  final String streetAddress;
  final StatesUS state; // TODO: enum for states
  final String zipCode;
}

class PaymentInfo {
  // TODO: check if there are modules for credit-card stuff

  final String cardHolder;
  // card number
  final DateTime expirationDate;
  final Address billingAddress; // From user-profile
}