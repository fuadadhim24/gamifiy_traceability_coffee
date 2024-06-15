import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamify_traceability_coffee/shared/theme.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:gamify_traceability_coffee/ui/widgets/profile.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    Color tPrimaryColor = greenBackgroundColor;
    String tProfileImage = 'ic_avatar1.png';
    String tProfileHeading = 'Admin';
    String tProfileSubHeading = 'tefafactory@gmail.com';
    String tEditProfile = 'Ubah Profile';
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(height: 50),

              /// -- IMAGE
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child:
                            Image(image: AssetImage('assets/$tProfileImage'))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor),
                      child: const Icon(
                        CupertinoIcons.pencil_outline,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(tProfileHeading,
                  style: Theme.of(context).textTheme.headline4),
              Text(tProfileSubHeading,
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 20),

              /// -- BUTTON
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const UpdateProfilePage()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tPrimaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: Text(tEditProfile, style: WhiteRubikTextStyle),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              /// -- MENU
              ProfileMenuWidget(
                  title: "Settings", icon: CupertinoIcons.gear, onPress: () {}),
              ProfileMenuWidget(
                  title: "User Management",
                  icon: CupertinoIcons.person_crop_circle_badge_checkmark,
                  onPress: () {}),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: "Information",
                  icon: CupertinoIcons.info,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "Logout",
                  icon: CupertinoIcons.arrow_left_right_square,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {
                    Get.defaultDialog(
                      title: "LOGOUT",
                      titleStyle: const TextStyle(fontSize: 20),
                      content: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text("Are you sure, you want to Logout?"),
                      ),
                      confirm: Expanded(
                        child: ElevatedButton(
                          onPressed: () => () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              side: BorderSide.none),
                          child: const Text("Yes"),
                        ),
                      ),
                      cancel: OutlinedButton(
                          onPressed: () => Get.back(), child: const Text("No")),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int tFormHeight = 30;
    String tProfileImage = 'ic_avatar1.png';
    String tEditProfile = 'Ubah Profil';
    String tFullName = 'Fuad Adhim Al Hasan';
    String tEmail = 'fuadadhim24@gmail.com';
    String tPassword = 'password';
    String tPhoneNo = '087840123123';
    String tJoined = 'bergabung pada ';
    String tJoinedAt = '10 Juni 2024';
    String tDelete = 'Hapus';
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.back)),
          title: Text('Edit Profile',
              style: DarkBlueRubikTextStyle.copyWith(
                  fontSize: 24, fontWeight: medium))),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              // -- IMAGE with ICON
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child:
                            Image(image: AssetImage('assets/$tProfileImage'))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: whiteBackgroundColor),
                      child: const Icon(CupertinoIcons.camera,
                          color: Colors.black, size: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),

              // -- Form Fields
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text(tFullName),
                          prefixIcon: Icon(CupertinoIcons.person)),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text(tEmail),
                          prefixIcon: Icon(CupertinoIcons.envelope)),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text(tPhoneNo),
                          prefixIcon: Icon(CupertinoIcons.phone)),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text(tPassword),
                        prefixIcon: const Icon(Icons.fingerprint),
                        suffixIcon: IconButton(
                            icon: const Icon(CupertinoIcons.eye_slash),
                            onPressed: () {}),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // -- Form Submit Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () =>
                            Get.to(() => const UpdateProfilePage()),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: greenBackgroundColor,
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child: Text(tEditProfile, style: WhiteRubikTextStyle),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // -- Created Date and Delete Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: tJoined,
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                  text: tJoinedAt,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12))
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.defaultDialog(
                              title: "Hapus Akun",
                              titleStyle: const TextStyle(fontSize: 20),
                              content: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Text(
                                    "Apakah yakin, anda ingin Hapus akun ini?"),
                              ),
                              confirm: Expanded(
                                child: ElevatedButton(
                                  onPressed: () => () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.redAccent,
                                      side: BorderSide.none),
                                  child: const Text("Yes"),
                                ),
                              ),
                              cancel: OutlinedButton(
                                  onPressed: () => Get.back(),
                                  child: const Text("No")),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.redAccent.withOpacity(0.1),
                              elevation: 0,
                              foregroundColor: Colors.red,
                              shape: const StadiumBorder(),
                              side: BorderSide.none),
                          child: Text(tDelete),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
