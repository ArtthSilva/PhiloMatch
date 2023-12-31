import 'package:flutter/material.dart';
import 'package:filo_master/layers/domain/models/philosopher_model.dart';
import 'package:google_fonts/google_fonts.dart';


class SelectPhilosopherComponent extends StatelessWidget {
  final PhilosopherModel philosopher;

  const SelectPhilosopherComponent(
    this.philosopher, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.801,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.45),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 4),
          )
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            philosopher.image,
            fit: BoxFit.fill,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 16, left: 16, right: 1, bottom: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      philosopher.name,
                      style:   
                      GoogleFonts.robotoSlab(fontSize: 20, fontWeight: FontWeight.bold),                    
                      
                    ),
                    const Text(
                      ', ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 5),
                      child: Row(
                        children: [
                          Text(
                            philosopher.yearBirth.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const Text(' - '),
                          Text(
                            philosopher.yearDeath.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.location_on),
                    Text(
                      philosopher.country,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
