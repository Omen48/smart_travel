import 'package:auth_study/presentation/screens.dart/places_screen.dart';
import 'package:auth_study/presentation/values/colors.dart';
import 'package:auth_study/presentation/widgets/places.dart';
import 'package:auth_study/presentation/widgets/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  // const UserInfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
              scaffoldKey.currentState!.openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: const SettingsUser(),
      backgroundColor: Colors.white,
      body: const Column(
        children: [
          UserInfo(),
          SizedBox(
            height: 10,
          ),
          Expanded (child: Favourite()),
        ],
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Все, что тебе понравилось \nза последнее время',
            style: favouriteStyle,
          ),
        ),
        Expanded(child: FavouriteList())
      ],
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



class FavouriteList extends StatelessWidget {
  FavouriteList({super.key});

  final List<PlaceData> favList = [
    const PlaceData(imageAsset: 'images/worship3.png', placeName: 'Тауэрский мост'),
    const PlaceData(imageAsset: 'images/worship3.png', placeName: 'Тауэрский мост')


  ];

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      // padding: const EdgeInsets.symmetric(horizontal: 15), // Отступы по краям
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemCount: favList.length,
      itemBuilder: (context, index) {
        return Center(
          child: Place(
            imageAsset: favList[index].imageAsset,
            placeName: favList[index].placeName,
          ),
        );
      },);
  }
}
