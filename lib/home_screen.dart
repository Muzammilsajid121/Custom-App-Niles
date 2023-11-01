import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Home extends StatelessWidget {
   Home({super.key});

final Uri _url = Uri.parse('https://theapk.live');
  @override
  
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
         decoration:const  BoxDecoration(
          image: DecorationImage(
            fit:BoxFit.fitWidth,
            image: AssetImage("assets/hori2.png",))
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 10),
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(  
                     
                        foregroundColor: Colors.white,
                                   backgroundColor: Colors.blue,
                                   // side: BorderSide(color: const Color.fromARGB(255, 20, 19, 19), width: 1),
                                 ),
                      onPressed: (){
                                     _launchUrl();
                           
                                    }, 
                                    child: const  Icon(Icons.shield)),
                   ),
        
                ],
              ),
             const  SizedBox(height: 90,),
              Text("~Teen Patti Master~", style: Theme.of(context).textTheme.bodyMedium,),
           const    SizedBox(height: 10,),
             
                Text("Currently app version old!", style: Theme.of(context).textTheme.bodyLarge,),
                 Text("Please press below button to get latest version.\n     New Game! free Bonus! Wonderfull Update", style: Theme.of(context).textTheme.bodyLarge,),
                 //
             const  SizedBox(height: 10,),
                 //button
                 ElevatedButton(
                    style: ElevatedButton.styleFrom(   
                      foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                side: BorderSide(color: const Color.fromARGB(255, 20, 19, 19), width: 1),
              ),
                  
                  onPressed: (){
                  
                  _launchUrl();
        
                 }, 
                 child:const  Text("Upgrade Now!")),
        
        
                 //
                //  FloatingActionButton(onPressed: (){
                //   _launchUrl();
        
                //  })
            ],
        
          ),
        ),
       
        
      ),

    );
  }
  Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
}