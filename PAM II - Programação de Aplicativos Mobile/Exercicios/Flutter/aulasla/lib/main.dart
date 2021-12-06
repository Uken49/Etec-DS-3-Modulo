import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Portfólio maneiro'),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'http://www.saboresajinomoto.com.br/uploads/images/recipes/canelone-a-bolonhesa.jpg'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 70,
                child: CircleAvatar(
                  backgroundImage: AssetImage('img/Eu.jpg'),
                  radius: 65,
                ),
              ),
              Text(
                'Helder D.R. Alvarenga',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'Programador back-end',
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RoadRage',
                    letterSpacing: 3.5),
              ),
              SizedBox(
                height: 20,
                width: 400,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 35,
                    color: Colors.black,
                  ),
                  title: Text(
                    '+11 96319-4327',
                    style: TextStyle(
                        color: Colors.blueGrey.shade700,
                        fontFamily: 'RoadRage',
                        fontSize: 25,
                        letterSpacing: 1.5),
                  ),
                  subtitle: Text(
                    'Número verdadeiro',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 35,
                    color: Colors.black,
                  ),
                  title: Text(
                    'helder@etec.sp.gov.br',
                    style: TextStyle(
                        color: Colors.blueGrey.shade700,
                        fontFamily: 'RoadRage',
                        fontSize: 25,
                        letterSpacing: 1.5),
                  ),
                  subtitle: Text(
                    'Email institucional',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      '../img/facebook.png',
                      width: 50,
                    ),
                    Image.asset(
                      '../img/telegram.png',
                      width: 50,
                    ),
                    Image.asset(
                      '../img/instagram.png',
                      width: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
