import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nizar_ztn_portfolio/models/project_model.dart';

import '../../../../../core/routes/app_router.dart';
import '../../../widgets/hover_underline.dart';

class BackHeaderBar extends StatelessWidget {
  const BackHeaderBar({Key? key, required this.projectModel}) : super(key: key);

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: () => context.go(kHomeView),
                icon: const Icon(Icons.arrow_back_ios_new_outlined),
              ),
            ),
            HoverUnderlineText(
              text: projectModel.projectTitle,
              textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ],
        ),
        const Gap(30),
        Divider(height: 1, color: Theme.of(context).textTheme.bodySmall!.color),
        const Gap(30),
      ],
    );
  }
}
