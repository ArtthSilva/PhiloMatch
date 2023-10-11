import 'package:filo_master/layers/domain/models/philosopher_model.dart';
import 'package:filo_master/layers/presentation/favorite_philo_profile/philo_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesScreen extends StatefulWidget {
  final List<PhilosopherModel> favorites;

  const FavoritesScreen(this.favorites, {super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Favoritos',
            style: GoogleFonts.openSans(),
          ),
          toolbarHeight: 60,
          elevation: 0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22),
              ),
              gradient: LinearGradient(colors: [
                Colors.red[700]!,
                Colors.deepPurple,
                Colors.blue[700]!,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
          ),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: widget.favorites.length,
          itemBuilder: (context, index) {
            final philosopher = widget.favorites[index];
            return SafeArea(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PhiloProfile(philosopher: philosopher)

                        ),
                      );
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                        color: Colors.blueAccent,
                      ),
                      margin: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            child: Image.asset(
                              philosopher.image,
                              width: 100,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.17,
                          ),
                          Text(
                            philosopher.name,
                            style: GoogleFonts.robotoSlab(),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
