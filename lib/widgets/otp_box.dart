import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class otpBox extends StatelessWidget {
  const otpBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 20,
      ),
      height: 80,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors: [
            Color(0xff96351E).withOpacity(0.10),
            Colors.grey.withOpacity(0.30),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          cursorColor: Color(0xffDBB98F),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          style: TextStyle(
            fontSize: 30,
          ),
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffDBB98F)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffDBB98F)),
            ),
          ),
        ),
      ),
    );
  }
}
