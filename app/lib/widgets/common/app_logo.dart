import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  final double size;

  const AppLogo({
    super.key,
    this.size = 50,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final logoColor = isDark ? Colors.white : Colors.black;
    final textColor = isDark ? Colors.white : Colors.black87;

    return Column(
      children: [
        SvgPicture.asset(
          'assets/images/logo.svg',
          width: size,
          height: size,
          colorFilter: ColorFilter.mode(
            logoColor,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'FLOWSTATE',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: textColor,
          ),
        ),
      ],
    );
  }
}