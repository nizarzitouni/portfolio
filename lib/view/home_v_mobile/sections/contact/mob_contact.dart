import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants.dart';
import '../../../../core/functions.dart';
import '../../../../core/pallete.dart';
import '../../../home_v_web/widgets/web_footer.dart';

class MobContact extends StatelessWidget {
  const MobContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Gap(30),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runAlignment: WrapAlignment.center,
            runSpacing: 16,
            children: [
              Center(
                child: Text(
                  'I’m interested in remote jobs or freelance opportunities. However, if you have other request or question, don’t hesitate to contact me via email.',
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const Gap(30),
              Center(
                child: RawMaterialButton(
                  hoverColor: Pallete.whiteColor.withOpacity(.4), // Set the hover color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.all(12.0),

                  onPressed: () {
                    sendEmail();
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AssetsConstants.emailSvg,
                        height: 20,
                        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                      const SizedBox(width: 12.0),
                      const Text(
                        'ztn.nizar@gmail.com',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Gap(30),
          const WebFooter(),
          const Gap(10),
        ],
      ),
    );
  }
}
