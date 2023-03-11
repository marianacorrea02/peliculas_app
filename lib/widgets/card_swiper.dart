import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    // informacion del dispositivo
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height*0.5,
      
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.9,
        //se contruye bajo demanda
        itemBuilder: (_, int index) {
          return GestureDetector(
            //cambiar de pantalla cuando se haga tab
            onTap: () => Navigator.pushNamed(context,'details', arguments: 'prueba'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20  ),
              child: const FadeInImage(
                placeholder:AssetImage('assets/no-image.jpg'), 
                image: NetworkImage('https://via.placeholder.com/300x400'),
                //adaptar imagen al tamaño del contenedor padre
                fit: BoxFit.cover
                ),
            ),
          );
        },
      )
    );
  }
}