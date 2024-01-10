import 'package:auth_study/values/colors.dart';
import 'package:auth_study/widgets/places.dart';
import 'package:auth_study/widgets/settings.dart';
import 'package:flutter/material.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKeyUser = GlobalKey<ScaffoldState>();
  // const UserInfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKeyUser,
      appBar: AppBar(
        title: Center(
          child: SizedBox(
            height: 25,
            width: 25,
            child: Image.asset('images/main_logo.png'),
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset('icons/settings.png'),
            onPressed: () {
              _scaffoldKeyUser.currentState!.openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: const SettingsUser(),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          // physics: const BouncingScrollPhysics(),
          children: const [
            UserInfo(),
            SizedBox(
              height: 10,
            ),
            Favourite(),
          ],
        ),
      ),
    );
  }
}

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => FavouriteState();
}

class FavouriteState extends State<Favourite> {
  final favouriteStyle = const TextStyle(
    color: SecondMainTheme.secondMainThemeColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Все, что тебе понравилось \nза последнее время',
            style: favouriteStyle,
          ),
          const SizedBox(height: 24),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Place(
                imageAsset: 'images/worship1.png',
                placeName: 'Бурдж-Халифа',
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: const Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Photo(),
            SizedBox(height: 27),
            Greetings(),
          ],
        ),
      ),
    );
  }
}

class Greetings extends StatelessWidget {
  const Greetings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Привет, Ваня!',
      style: TextStyle(
          fontSize: 20,
          fontFamily: AutofillHints.addressCity,
          fontWeight: FontWeight.w800,
          color: Color(0xFF1D3747)),
    );
  }
}

class Photo extends StatelessWidget {
  const Photo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 105,
      height: 105,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: ClipOval(
          child: Image.asset('images/profile.png'),
        ),
      ),
    );
  }
}
