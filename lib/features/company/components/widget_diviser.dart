import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WidgetDiviser extends StatelessWidget {
  const WidgetDiviser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width *0.3,
            color: Colors.black,
          ),
          Container(
            width: MediaQuery.of(context).size.width *0.7,
            //color: Colors.green,
            padding: EdgeInsets.only(top: 100, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(Iconsax.wallet_3, size: 40,),
                ),
                SizedBox(height: 20,),
                Text("Byte Entreprise Suite", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                SizedBox(height: 8,),
                Text("Byte your business!", style: TextStyle(fontSize: 15, color: Colors.black),),
                SizedBox(height: 20,),
               Container(
                 child: Row(
                   children: [
                     Container(
                       color: Colors.purple,
                       width: 50,
                       height: 3,
                     ),
                     Container(
                       color: Colors.grey,
                       width: 50,
                       height: 3,
                     ),
                     Container(
                       color: Colors.purple,
                       width: 50,
                       height: 3,
                     )
                   ],
                 ),
               ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Iconsax.personalcard, size: 80,),
                      SizedBox(width: 10,),
                      Text("Découvrez l'Art de \nGérer vos Finances", style: TextStyle(fontWeight: FontWeight.bold),),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Plongez dans une expérience simplifiée de gestion financière. De la facturation à la trésorerie, notre applicvation vous accompagnez à chaque étape, vous permettant de contrôler vos finances d'une manière intuitive et efficace"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
