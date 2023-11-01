import 'package:flutter/material.dart';

class Chambre {
  String image;
  String type;
  double prix;

  Chambre({required this.image, required this.type, required this.prix});
}

class Hotels extends StatelessWidget {
  final List<Chambre> chambres = [
    Chambre(image: 'assets/img1.jpg', type: 'Chambre Simple', prix: 50.0),
    Chambre(image: 'assets/img2.jpg', type: 'Chambre Double', prix: 80.0),
    Chambre(image: 'assets/img3.jpg', type: 'Pieces', prix: 150.0),
    Chambre(image: 'assets/img4.jpg', type: 'Studio', prix: 150.0),
    Chambre(image: 'assets/img5.jpg', type: 'Garage', prix: 300.0),
    Chambre(image: 'assets/img5.jpg', type: '', prix: 150.0),
    Chambre(image: 'assets/img6.jpg', type: 'Suite', prix: 350.0),
    Chambre(image: 'assets/img7.jpg', type: 'Suite', prix: 450.0),
    Chambre(image: 'assets/img8.jpg', type: 'Suite', prix: 350.0),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        title: const Center(
        
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Icon(Icons.houseboat_outlined),
              Text(' Liste des chambres'),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: chambres.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all( 10.0),
            child: Card(
              color: Colors.green[400],
              margin: const EdgeInsets.all(40),
              child:  Container(
                
                child: ListTile(
                  leading: Image.asset(chambres[index].image),
                  title: Text(chambres[index].type),
                  subtitle: Text('Prix : ${chambres[index].prix.toStringAsFixed(2)} €'),
                  trailing: ElevatedButton(
                    child: Text('Réserver'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReservationPage(chambre: chambres[index]),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ReservationPage extends StatefulWidget {
  final Chambre chambre;

  ReservationPage({required this.chambre});

  @override
  _ReservationPageState createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  DateTime? dateReservation;
  int? nombreJours;
  int? nombrePersonnes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:const Text('Réservation'),
      ),
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.chambre.image),
              Text(widget.chambre.type),
              Text('Prix : ${widget.chambre.prix.toStringAsFixed(2)} €'),
           const   SizedBox(height: 16.0),
            const  Text('Date de réservation :'),
              ElevatedButton(
                child: Text(dateReservation != null ? dateReservation!.toString() : 'Sélectionner une date'),
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 365)),
                  ).then((selectedDate) {
                    setState(() {
                      dateReservation = selectedDate;
                    });
                  });
                },
              ),
            const  SizedBox(height: 16.0),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Nombre de jours',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    nombreJours = int.tryParse(value);
                  });
                },
              ),
             const SizedBox(height: 16.0),
              TextField(
                decoration:const InputDecoration(
                  labelText: 'Nombre de personnes',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    nombrePersonnes = int.tryParse(value);
                  });
                },
              ),
            const  SizedBox(height: 16.0),
              ElevatedButton(
                child:const Text('Réserver'),
                onPressed: () {
                  // Traitez ici les informations de réservation
                  // Vous pouvez afficher un message de confirmation ou effectuer d'autres actions
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
