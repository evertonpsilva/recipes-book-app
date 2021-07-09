import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {

  final VoidCallback onPressed;
  final Widget child;
  final bool disabled;

  const DefaultButton({ 
    required VoidCallback onPressed,
    required Widget child,
    required bool disabled,
    Key? key ,
  }) : this.onPressed = onPressed,
       this.child = child,
       this.disabled = disabled,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColor,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)
          ),
        ),
        onPressed: !disabled ? onPressed : null, 
        child: child
      ),
    );
  }
}