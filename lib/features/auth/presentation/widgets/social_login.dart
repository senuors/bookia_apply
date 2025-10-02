import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_style.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider()),
            Text('   OR   ', style: TextStyles.textStyle15),
            Expanded(child: Divider()),
          ],
        ),
        Gap(12),
        SocailButton(
          icon: AppImages.appleSvg,
          label: 'Login with Apple',
          onPressed: () {},
        ),
        Gap(12),
        SocailButton(
          icon: AppImages.googleicSvg,
          label: 'Login with Google',
          onPressed: () {},
        ),
      ],
    );
  }
}

class SocailButton extends StatelessWidget {
  const SocailButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.icon,
  });

  final String label;
  final Function() onPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            Gap(12),
            Text(label, style: TextStyles.textStyle15),
          ],
        ),
      ),
    );
  }
}
