import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vaibhav_profile/project.dart';

_launchReUps() async {
  const ReUps_url = 'https://20fnjl8fhkuqlsnbxvvnua-on.drv.tw/www.reskill-upskill.com/';
  if (await canLaunch(ReUps_url)) {
    await launch(ReUps_url);
  } else {
    throw 'Could not launch $ReUps_url';
  }
}

_launchFlutter() async {
  const Flutter_url = 'https://github.com/vaibhav-karnwal/Flutter-Documentation';
  if (await canLaunch(Flutter_url)) {
    await launch(Flutter_url);
  } else {
    throw 'Could not launch $Flutter_url';
  }
}

_launchDjango() async {
  const Django_url = 'https://github.com/vaibhav-karnwal/Django-Documentation';
  if (await canLaunch(Django_url)) {
    await launch(Django_url);
  } else {
    throw 'Could not launch $Django_url';
  }
}

_launchVideos() async {
  const Videos_url = 'https://www.youtube.com/watch?v=E6XW0Mqu5cA&list=PL9-L25s90unKM6J1LKpKu_0cdZwKbr9q3&index=5';
  if (await canLaunch(Videos_url)) {
    await launch(Videos_url);
  } else {
    throw 'Could not launch $Videos_url';
  }
}

_launchJava() async {
  const Java_url = 'https://www.hackerrank.com/certificates/0ee6b641831b';
  if (await canLaunch(Java_url)) {
    await launch(Java_url);
  } else {
    throw 'Could not launch $Java_url';
  }
}
_launchPython() async {
  const Python_url = 'https://www.hackerrank.com/certificates/b462f581d385';
  if (await canLaunch(Python_url)) {
    await launch(Python_url);
  } else {
    throw 'Could not launch $Python_url';
  }
}

_launchPortfolio() async {
  const portfolio_url = 'https://trorstphpuskxi3cchfhdg-on.drv.tw/www.myportfolio.com/';
  if (await canLaunch(portfolio_url)) {
    await launch(portfolio_url);
  } else {
    throw 'Could not launch $portfolio_url';
  }
}


List<Map> drawerItems=[
  {
    'icon':FontAwesomeIcons.globe,
    'title': 'Portfolio Website',
    'onPress':_launchPortfolio,
  },
  {
    'icon':FontAwesomeIcons.certificate,
    'title': 'HackerRank Java Certificate',
    'onPress':_launchJava,
  },
  {
    'icon':FontAwesomeIcons.certificate,
    'title': 'HackerRank Python Certificate',
    'onPress':_launchPython,
  },
  {
    'icon':FontAwesomeIcons.file,
    'title': 'Flutter Documentation',
    'onPress':_launchFlutter,
  },
  {
    'icon':FontAwesomeIcons.file,
    'title': 'Django Documentation',
    'onPress':_launchDjango,
  },
  {
    'icon': FontAwesomeIcons.globe,
    'title': 'Reskill-Upskill Website',
    'onPress': _launchReUps,
  },
  {
    'icon': FontAwesomeIcons.youtube,
    'title': 'Project Videos',
    'onPress': _launchVideos,
  },
];