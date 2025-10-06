import 'package:flutter/material.dart';

class MobWuoteWidget extends StatelessWidget {
  const MobWuoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 148,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Overthinking is the enemy of execution.',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            child: const Padding(
              padding: EdgeInsets.all(11.0),
              child: Text(
                '- Tony Robbins',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
          ),
          // Positioned(
          //   top: -15,
          //   left: 8,
          //   child: Container(
          //       color: Theme.of(context).scaffoldBackgroundColor,
          //       height: 42,
          //       width: 29,
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: SvgPicture.asset(AssetsConstants.quoteSvg),
          //       )),
          // ),
          // Positioned(
          //   right: 10,
          //   bottom: 40,
          //   child: Container(
          //     color: Theme.of(context).scaffoldBackgroundColor,
          //     height: 42,
          //     width: 29,
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: SvgPicture.asset(AssetsConstants.quoteSvg),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
