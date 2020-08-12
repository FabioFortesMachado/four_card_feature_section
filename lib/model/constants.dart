import '../ui/usable_card.dart';
import 'package:flutter/material.dart';

const Color veryDarkBlue = Color(0xFF4C4E61);
const Color grayishBlue = Color(0xFFA3A5AE);
const Color veryLightGray = Color(0xFFA3A5AE);
const Color shadowColor = Color(0xFFDAE4EE);

const double desktopAspectRatio = 620 / 422;
const double desktopInvertedAspectRatio = 1 / desktopAspectRatio;

final Map<String, UsableCard> cards = {
  'Supervisor': UsableCard(
    title: 'Supervisor',
    bodyText: 'Monitors activity to identify project roadblocks',
    iconName: 'assets/images/icon-supervisor.svg',
    cardColor: Colors.cyan,
  ),
  'Team Builder': UsableCard(
    title: 'Team Builder',
    bodyText:
        'Scans our talent network to create the optimal team for your project',
    iconName: 'assets/images/icon-team-builder.svg',
    cardColor: Colors.red,
  ),
  'Karma': UsableCard(
    title: 'Karma',
    bodyText: 'Regularly evaluates our talent to ensure quality',
    iconName: 'assets/images/icon-karma.svg',
    cardColor: Colors.orange,
  ),
  'Calculator': UsableCard(
    title: 'Calculator',
    bodyText:
        'Uses data from past projects to provide better delivery estimates',
    iconName: 'assets/images/icon-calculator.svg',
    cardColor: Colors.blue,
  ),
};
