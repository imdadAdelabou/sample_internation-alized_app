import 'package:flutter/material.dart';
import 'package:pet_zone/statics/constant.dart';

class CustomTextFormField extends StatefulWidget {
  final TypeInput typeInput;
  const CustomTextFormField({
    Key? key,
    this.typeInput = TypeInput.text,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure = true;

  Widget gestureDetector() {
    return GestureDetector(
      onTap: () {
        isObscure = !isObscure;
        setState(() {});
      },
      child: Icon(isObscure ? eyesIconSlash : eyesIcon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          suffixIcon:
              widget.typeInput == TypeInput.mdp ? gestureDetector() : null,
        ),
        obscureText: widget.typeInput == TypeInput.mdp ? isObscure : false,
      ),
    );
  }
}
