import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jaxa_anvarov/core/images/app_images.dart';
import 'package:jaxa_anvarov/core/imports/imports.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final Uri _telegramURl = Uri.parse('https://t.me/jaxaAnvarov');
  final Uri _instagramURl = Uri.parse('https://www.instagram.com/jaxaanvarov/');
  final Uri _gitHubURl = Uri.parse('https://github.com/JaxaAnvarov');
  final Uri _mediumURl = Uri.parse('https://medium.com/@anvarovjahongir13');
  final Uri _youTubeURl =
      Uri.parse('https://www.youtube.com/channel/UCJX_24awl3oKNPk7Xpy4CQg');

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    GlobalKey<ScaffoldState> _scaoffoldKey = GlobalKey();
    return Scaffold(
      key: _scaoffoldKey,
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: getW(30.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getW(50.0),
                height: getW(50.0),
                child: IconButton(
                  icon: Icon(
                    Icons.menu_rounded,
                    color: AppColors.menuIconColor,
                    size: getW(32.0),
                  ),
                  onPressed: () {
                    _scaoffoldKey.currentState!.openDrawer();
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: getW(50.0),
                child: Text(
                  "Jahongir Anvarov",
                  style: TextStyle(
                    fontSize: getW(28.0),
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        leading: const SizedBox(),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: getW(150.0),
              height: getW(150.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(AppImages.LOGO),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.button,
                fixedSize: Size(
                  getW(300.0),
                  getH(48.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.youtube,
                    color: AppColors.redColor,
                  ),
                  Text(
                    "YouTube",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: getW(18.0),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              onPressed: () {
                _youtubeLaunchUrl();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.button,
                fixedSize: Size(
                  getW(300.0),
                  getH(48.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.instagram,
                  ),
                  Text(
                    "Instagram",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: getW(18.0),
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              onPressed: () {
                _instagramLaunchUrl();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.button,
                fixedSize: Size(
                  getW(300.0),
                  getH(48.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.telegram,
                    color: AppColors.blueColor,
                  ),
                  Text(
                    "Telegram",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: getW(18.0),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              onPressed: () {
                _telegramLaunchUrl();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.button,
                fixedSize: Size(
                  getW(300.0),
                  getH(48.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.github,
                  ),
                  Text(
                    "GitHub",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: getW(18.0),
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              onPressed: () {
                _gitHubLaunchUrl();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.button,
                fixedSize: Size(
                  getW(300.0),
                  getH(48.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.medium,
                  ),
                  Text(
                    "Medium",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: getW(18.0),
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              onPressed: () {
                _mediumLaunchUrl();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _telegramLaunchUrl() async {
    if (!await launchUrl(_telegramURl)) throw 'Could not launch $_telegramURl';
  }

  void _instagramLaunchUrl() async {
    if (!await launchUrl(_instagramURl))
      throw 'Could not launch $_instagramURl';
  }

  void _gitHubLaunchUrl() async {
    if (!await launchUrl(_gitHubURl)) throw 'Could not launch $_gitHubURl';
  }

  void _youtubeLaunchUrl() async {
    if (!await launchUrl(_youTubeURl)) throw 'Could not launch $_youTubeURl';
  }

  void _mediumLaunchUrl() async {
    if (!await launchUrl(_mediumURl)) throw 'Could not launch $_mediumURl';
  }
}
