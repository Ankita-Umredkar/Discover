import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: <Widget>[
            imageProfile(),
            SizedBox(
              height: 20,
            ),
            // nameTextField(),
            // SizedBox(
            //   height: 20,
            // ),
            // emailTextField(),
            // SizedBox(
            //   height: 20,
            // ),

            locationTextField(),
            SizedBox(
              height: 20,
            ),
            pincodeTextField(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlineButton(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () {},
                  child: Text(
                    'CANCEL',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 2.2,
                      color: Colors.black,
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                        fontSize: 14, letterSpacing: 2.2, color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget imageProfile() {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
              radius: 80.0,
              // ignore: unnecessary_null_comparison
              backgroundImage: AssetImage('images/user_5.png')),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.blue,
                size: 20.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: <Widget>[
          Text(
            'Choose Profile photo',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.camera),
                onPressed: () {
                  // _imgFromCamera();
                },
                label: Text('camera'),
              ),
              FlatButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                  // _imgFromGallery();
                },
                label: Text('Gallery'),
              ),
            ],
          )
        ],
      ),
    );
  }

  // Widget nameTextField() {
  //   return TextFormField(
  //     decoration: InputDecoration(
  //       border: OutlineInputBorder(
  //         borderSide: BorderSide(color: Colors.blue),
  //       ),
  //       focusedBorder: OutlineInputBorder(
  //         borderSide: BorderSide(
  //           color: Colors.blueAccent,
  //           width: 2,
  //         ),
  //       ),
  //       prefixIcon: Icon(
  //         Icons.person,
  //         color: Colors.blue,
  //       ),
  //       labelText: 'Name',
  //       helperText: "Name can't be empty",
  //       hintText: 'User1',
  //     ),
  //   );
  // }

  // Widget emailTextField() {
  //   return TextFormField(
  //     decoration: InputDecoration(
  //       border: OutlineInputBorder(
  //         borderSide: BorderSide(color: Colors.blue),
  //       ),
  //       focusedBorder: OutlineInputBorder(
  //         borderSide: BorderSide(
  //           color: Colors.blueAccent,
  //           width: 2,
  //         ),
  //       ),
  //       prefixIcon: Icon(
  //         Icons.email,
  //         color: Colors.blue,
  //       ),
  //       labelText: 'Email',
  //       helperText: "Email can't be empty",
  //       hintText: 'user123@gmail.com',
  //     ),
  //   );
  // }

  Widget pincodeTextField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 2,
          ),
        ),
        prefixIcon: Icon(
          Icons.pin,
          color: Colors.blue,
        ),
        labelText: 'Pin Code',
        helperText: "Pincode",
        hintText: '440035',
      ),
    );
  }

  Widget locationTextField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 2,
          ),
        ),
        prefixIcon: Icon(
          Icons.location_city,
          color: Colors.blue,
        ),
        labelText: 'City',
        helperText: "Write Your Current Location",
        hintText: 'Mumbai',
      ),
    );
  }
}
 








// class Setting extends StatelessWidget {
//   const Setting({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text('Setting',
//         style: TextStyle(
//           fontSize: 25,
//           fontWeight: FontWeight.w600
//         ),
//         ),
//       ),
      
//     );
//   }
// }