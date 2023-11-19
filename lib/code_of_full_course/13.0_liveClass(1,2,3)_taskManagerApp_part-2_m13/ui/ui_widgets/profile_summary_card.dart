import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/13.0_liveClass(1,2,3)_taskManagerApp_part-2_m13/ui/ui_screens/update_profile_screen.dart';

class ProfileSummaryCard extends StatelessWidget {
  const ProfileSummaryCard({super.key, this.enableOnLongTab = true});

  final bool enableOnLongTab;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        if (enableOnLongTab == true) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const UpdateProfileScreen(),
            ),
          );
        }
      },
      tileColor: Colors.green,
      leading: const CircleAvatar(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.person),
        ),
      ),
      title: const Text(
        "Sheikh Ajijul Hoque (Shanto)",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
      subtitle: const Text("mastershanto@gmail.com",
          style: TextStyle(color: Colors.white)),
      trailing: enableOnLongTab ? const Icon(Icons.arrow_forward) : null,
    );
  }
}
