import 'package:filo_master/layers/domain/models/philosopher_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhiloProfile extends StatefulWidget {
  final PhilosopherModel philosopher;
  const PhiloProfile({super.key, required this.philosopher});

  @override
  State<PhiloProfile> createState() => _PhiloProfileState();
}

class _PhiloProfileState extends State<PhiloProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(widget.philosopher.image),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(top: 20, bottom: 5),
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.45,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 20),
                        child: Row(
                          children: [
                            Text(
                              '${widget.philosopher.name} ',
                              style: GoogleFonts.robotoSlab(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                '${widget.philosopher.primeAge} ',
                                style: GoogleFonts.robotoSlab(
                                  fontSize: 19,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.verified,
                              color: Colors.blue,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        // color: Colors.blue,
                        height: MediaQuery.sizeOf(context).height * 0.068,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(Icons.home_outlined),
                                ),
                                Text('Lives in ${widget.philosopher.country}'),
                              ],
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(Icons.menu_book_sharp),
                                ),
                                Text(
                                    'Conhecido por causa do ${widget.philosopher.famous}')
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.pink[100],
                              ),
                              child: Flexible(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right:3),
                                      child: Icon(
                                        Icons.favorite_outlined,
                                        color: Colors.red[800],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 2),
                                          child: Text(
                                            'Procurando por: ',
                                            style: GoogleFonts.robotoFlex(
                                              fontSize: 15,
                                              color: Colors.pink[400],                                              
                                            ),
                                          ),
                                        ),
                                        Text(
                                          widget.philosopher.search,
                                          style: GoogleFonts.robotoSlab(
                                            fontSize: 14,
                                            color: Colors.pink[800],
                                            fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        
                      ),
                      const Divider(
  color: Colors.black, // Cor da linha horizontal
  thickness: 0.1, 
  height: 25,
// Espessura da linha horizontal
),
                      Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width * 0.08,
                          bottom: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        width: double.infinity,
                        child: Text(
                          'Sobre mim',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 18.0,
                          left: 18,
                        ),
                        child: Text(
                          widget.philosopher.about,
                          style: GoogleFonts.openSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
