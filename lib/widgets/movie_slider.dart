import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.red,
      child: Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('pop'),
          ),
          //toma todo el espacio restante 
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder:(_, int index) {
                return Container(
                  width: 130,
                  height: 190,
                  color: Colors.green,
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 
                  10),
                );
              }, 
            ),
          )
        ],
      ),
    );
  }
}