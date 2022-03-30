import 'package:victrola_shop/models/user_profile.dart';

import '../models/account.dart';

Account? FindTestAccount(String email, String password)
{
  Account value = TEST_ACCOUNT_DATA.firstWhere(
    (element) => element.email == email && element.password == password,
    orElse: () => Account(email: 'INVALID', password: 'INVALID')
  );

  return (value.email == 'INVALID') ? null : value;
}

var TEST_ACCOUNT_DATA = <Account>[
  Account(
    email: 'test@example.com',
    password: 'password',
    profiles: [
      UserProfile(
        firstName: 'Exemplar',
        lastName: 'Exemplifur',
        paymentInfo: [
          PaymentInfo(
            cardNumber: '1234 1234 1234 1234',
            expirationDate: DateTime(2022, 3, 30),
            cardHolderName:'Exemplar Exemplifur',
            cvvCode: '789',
            billingAddress: Address(
              type: AddressType.shipping,
              streetAddress: '789 Example St. Acme City',
              state: 'VA',
              zipCode: '67584'
            )
          ),
          PaymentInfo(
            cardNumber: '1234 3456 4567 6789',
            expirationDate: DateTime(2022, 3, 30),
            cardHolderName:'Exemplifina Exemplifur',
            cvvCode: '909',
            billingAddress: Address(
              type: AddressType.shipping,
              streetAddress: '789 Example St. Acme City',
              state: 'VA',
              zipCode: '67584'
            )
          )
        ],
        address: [
          Address(
            type: AddressType.shipping,
            streetAddress: '789 Example St. Acme City',
            state: 'VA',
            zipCode: '67584'
          ),
          Address(
            type: AddressType.shipping,
            streetAddress: '234 Test Ave. Acme City',
            state: 'VA',
            zipCode: '67584'
          )
        ] 
      ),
      UserProfile(
        firstName: 'Exemplifina',
        lastName: 'Exemplifur'
      )
    ]
  ),
  Account(
    email: 'testno2@example.com',
    password: 'abc123',
    profiles: [
      UserProfile(
        firstName: 'Jon',
        lastName: 'Doe'
      )
    ]
  ),
  Account(
    email: 'test@dinnertime.com',
    password: 'food',
    profiles: [
      UserProfile(
        firstName: 'Hamilton',
        lastName: 'Sandwich'
      )
    ]
  ),
];
