import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  const CastingCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      
      //scroll de abajo
      margin: EdgeInsets.only(bottom: 30),
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: ( _ , int index) =>_CastCard(),
      ),
    );
  }
}
class _CastCard extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder:AssetImage('assets/no-image.jpg'), 
              image: NetworkImage('https://via.placeholder.com/150x300'),
              width: 100,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5,),
          Text(
            'Laboris nisi sunt duis occaecat laboris culpa magna dolor labore do non sit et.',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}