import 'package:almudabir/PFontFamily.dart';
import 'package:almudabir/PSettings.dart';
import 'package:almudabir/View/MyAccountUi/sub/ManageAddPhoneNumSection.dart';
import 'package:flutter/material.dart';

class AccountUi extends StatefulWidget {
  const AccountUi({Key? key}) : super(key: key);

  @override
  State<AccountUi> createState() => _AccountUiState();
}

class _AccountUiState extends State<AccountUi> {

  Widget logoutButton(){
    return TextButton(
      onPressed: (){},
      child: Center(
        child: Text(
          'Log Out',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color:   PSettings.color1,
            fontFamily: PFontFamily.sf_ui_display,
          ),
        ),
      ),
    );
  }



  Widget circlAvatar(){
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 40.0,
      backgroundImage: AssetImage('asset/images/userPhoto.png'),
    );
  }


  Widget buildTextColumn() {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Text',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: PFontFamily.sf_ui_display,
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'test@admin.com',
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: PFontFamily.sf_ui_display,
              ),
            ),
          ],
        ),
      ),
    );
  }



  Widget AvatarContainer() {
    return Container(
      height: 125,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image:const  DecorationImage(
          image: AssetImage('asset/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          buildTextColumn(),
          const SizedBox(width: 16.0),
          circlAvatar(),
        ],
      ),
    );
  }



  Widget CustomListTile(String title, String imageAssetPath, Color titleColor) {
    return ListTile(
      leading: SizedBox(
        height: 25,
        child: Image(image: AssetImage(imageAssetPath)),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: 15.0,
          fontFamily: PFontFamily.sf_ui_display,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: () {
      },
    );
  }


  Widget logout() {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      height: 50,
      color: PSettings.color17,
      child: logoutButton(),
    );
  }



  Widget main(){
    return ListView(
      children: [
        AvatarContainer(),
        const SizedBox(height: 15,),
        ManagePhoneButtons(),
        const SizedBox(height: 40,),
        CustomListTile(
          'Settings',
          'asset/images/settings.png',
          PSettings.color16,
        ),
        CustomListTile(
          'Return Policy',
          'asset/images/policy.png',
          PSettings.color16,
        ),
        CustomListTile(
          'Privacy Policy',
          'asset/images/privacy.png',
          PSettings.color16,
        ),
        CustomListTile(
          'Help Center',
          'asset/images/help.png',
          PSettings.color16,
        ),
        const SizedBox(height: 198,),
        logout(),

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return main();
  }
}
