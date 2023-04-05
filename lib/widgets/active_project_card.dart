import 'package:flutter/material.dart';
import 'package:saibupi/theme/colors/light_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveProjectsCard extends StatelessWidget {
  final Color cardColor;
  final double loadingPercent;
  final String title;
  final String subtitle;

  ActiveProjectsCard({
    required this.cardColor,
    required this.loadingPercent,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.all(15.0),
        height: 200,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: CircularPercentIndicator(
            //     animation: true,
            //     radius: 40.0,
            //     percent: loadingPercent,
            //     lineWidth: 5.0,
            //     circularStrokeCap: CircularStrokeCap.round,
            //     backgroundColor: Colors.white10,
            //     progressColor: Colors.white,
            //     center: Text(
            //       '${(loadingPercent * 100).round()}%',
            //       style: TextStyle(
            //           fontWeight: FontWeight.w700, color: Colors.white),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircularPercentIndicator(
                radius: 40.0,
                lineWidth: 5.0,
                animation: true,
                percent: 0.75,
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: LightColors.kRed,
                backgroundColor: LightColors.kDarkYellow,
                center: CircleAvatar(
                  backgroundColor: LightColors.kBlue,
                  radius: 35.0,
                  backgroundImage: AssetImage(
                    'assets/images/avatar.png',
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
