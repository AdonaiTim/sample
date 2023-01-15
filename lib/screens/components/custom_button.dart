import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget icon;
  final String label;
  final Function ontap;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        ontap();
      },
      child: Container(
        height: 56,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
            color:Colors.black, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Text(
                label,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              const SizedBox(
                width: 10,
              ),
              icon,
            ],
          ),
        ),
      ),
    );
  }
}