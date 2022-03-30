import 'package:flutter/material.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/screens/ProfileScreens/profile_detail_screen.dart';

class ProfileListScreen extends StatelessWidget {
  const ProfileListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      // Center(
      //   child: Text('Profiles',
      //   textAlign: TextAlign.center,
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 38.0
      //     ),
      //   ),
      // ),

      Container(
        height: 100.0,
        child: Row(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                '  Profiles',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38.0),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.4),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    child: Text('Log Out'),
                    onPressed: () {
                      DatabaseHelper.userInstance = null;
                      Navigator.popUntil(context, (route) => false);
                      Navigator.of(context).pushNamed('/');
                    }
                    // cartData.forEach((item) {
                    //     DatabaseHelper.instance.deleteCartItem(item.key);
                    //   }),
                    ))
          ],
        ),
      ),
      SizedBox(height: 15.0),

      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.5,
        child: ListView.builder(
          itemCount: DatabaseHelper.userInstance!.profiles.length,
          itemBuilder: (context, index) => ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Color.fromARGB(255, 126, 124, 124)),
                borderRadius: BorderRadius.circular(0)),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProfileDetailScreen(i: index))),
            title: Text(
              DatabaseHelper.userInstance!.profiles[index].firstName +
                  ' ' +
                  DatabaseHelper.userInstance!.profiles[index].lastName,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 24.0),
            ),
            subtitle: Text(
              (DatabaseHelper.userInstance!.profiles[index].address.length > 0)
                  ? DatabaseHelper.userInstance!.profiles[index].address[0]
                          .streetAddress +
                      ' ' +
                      DatabaseHelper
                          .userInstance!.profiles[index].address[0].state +
                      ' ' +
                      DatabaseHelper
                          .userInstance!.profiles[index].address[0].zipCode
                  : '',
            ),
          ),
        ),
      ),

      ElevatedButton(
          style: ButtonStyle(
              alignment: Alignment.center,
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blueGrey),
              minimumSize: MaterialStateProperty.all(
                  Size((MediaQuery.of(context).size.width * 0.5), 40.0))),
          onPressed: () => {},
          // Navigator.of(context).push(MaterialPageRoute(
          //       builder: (context) => CheckoutScreen())),
          child: Text('Add Profile')),
    ])));
  }
}

// class ProfileListScreen extends StatefulWidget {
//   const ProfileListScreen({ Key? key }) : super(key: key);

//   @override
//   State<ProfileListScreen> createState() => _ProfileListScreenState();
// }

// class _ProfileListScreenState extends State<ProfileListScreen> {



//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//           body: SingleChildScrollView( 
//             child: Column(
//               children: [
//                 SizedBox(height: 15.0),
//                 Center(
//                   child: Text('Profiles',
//                   textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 38.0
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 15.0),
//                 ListView.builder(
//                   itemCount: DatabaseHelper.userInstance!.profiles.length,
//                   itemBuilder: (context, index) => 
//                     ListTile(
//                       title: Text(
//                         DatabaseHelper.userInstance!.profiles[index].firstName + DatabaseHelper.userInstance!.profiles[index].lastName,
//                         textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 38.0
//                           ),
//                         ),
//                         subtitle: Text(
//                           DatabaseHelper.userInstance!.profiles[index].address[0].streetAddress + ' '
//                           + DatabaseHelper.userInstance!.profiles[index].address[0].state + ' '
//                           + DatabaseHelper.userInstance!.profiles[index].address[0].zipCode
//                           ),
//                     )
//                 ),
//                 ElevatedButton(
//                   style: ButtonStyle(
//                     alignment: Alignment.center,
//                     backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
//                     minimumSize: MaterialStateProperty.all(Size((MediaQuery.of(context).size.width * 0.5), 40.0))
//                   ),
//                   onPressed: () => {},
//                   // Navigator.of(context).push(MaterialPageRoute(
//                   //       builder: (context) => CheckoutScreen())),
//                   child: Text('Proceed to Checkout')
//                 ),    
//               ]
//             )
//           )
//         )
//     );
//   }
// }