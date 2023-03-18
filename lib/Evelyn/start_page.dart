import 'package:flutter/material.dart';
import 'package:flutter_canapp/Evelyn/role_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(76, 76, 76, 0.612),
      body: 
      ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text('WELCOME!\nREADY TO\n PLAY?', 
               
                style: 
                  TextStyle(color: Colors.white, 
                  fontWeight: FontWeight.w600,
                  fontSize: 43,
                  ), ),
                Padding(padding: EdgeInsets.only(top:50.0),
                  child: Image.asset('images/doctorw.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: 
                  GestureDetector(
                    onTap: (){
                        //Ir a la pantalla de roles
                    Navigator.push(
                    context, MaterialPageRoute(builder : (context) => const RolePage())
                    );

                    },
                    child: ButtonBar(
                    children: [
                      ElevatedButton(onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 200, vertical: 25),
                      ),
                      child: const Text('Next'),),
                    ],
                  ),


                  )
                )
              ],
            ),
          )
        ],
      )

      

    );
  }
}
