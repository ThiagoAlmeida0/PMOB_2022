import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pmob_22/data/userDao.dart';
import 'package:flutter/material.dart';
import 'package:pmob_22/ui/widgets/buttons/rounded_app_button.dart';
import 'package:pmob_22/utils/constants.dart';




class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RoundedAppButton(
        buttonColor: ButtonColor,
        buttonName: "Logout",
        height: 50,
        width: 150,
        textColor: Colors.white,
        textSize: 20,
        buttonRouding: 50,
        onTap: (){
          Navigator.of(context).pushReplacementNamed("/login");
        }
              ),
    );
  }
}