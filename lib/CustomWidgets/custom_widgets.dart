import 'dart:async';

import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Duration duration = const Duration();
Timer? timer;
bool isCountdown = true;


Widget buildTime() {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  // final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // buildTimeCard(time: hours, header: 'HOURS'),
      const SizedBox(
        width: 8,
      ),
      buildTimeCard(
        time: minutes,
        header: LocaleKeys.minutes.tr(),
      ),
      const SizedBox(
        width: 8,
      ),
      buildTimeCard(time: seconds, header: LocaleKeys.seconds.tr()),
    ],
  );
}

Widget buildTimeCard({required String time, required String header}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 100,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: green,
        ),
        child: Center(
          child: Text(
            time,
            style: const TextStyle(
              fontFamily: 'Allerta',
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        header,
        style: TextStyle(fontFamily: 'Allerta'),
      ),
    ],
  );
}
