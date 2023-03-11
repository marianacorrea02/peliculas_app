import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      
      child: Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('pop'),
          ),
          
          //toma todo el espacio restante 
          Expanded(
            child: ListView.builder(
              //darle direccion al scroll por defecto es vertical
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder:(_, int index) => _MoviePoster()
            ),
          )
        ],
      ),
    );
  }
}
// se usa _ para hacerloprivado
class _MoviePoster extends StatelessWidget {
  const _MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 
      10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context,'details', arguments: 'prueba'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'), 
                image: NetworkImage('https://via.placeholder.com/300x400'),
                width: 130,
                height: 180,
                fit: BoxFit.cover,
                ),
            ),
          ),
          const SizedBox(height: 10,),
          const Text(
              'data etst ser aun texto largo que da un error para arreglarlo',
              //cantidad de lineas a mostrar
              maxLines: 2, 
              textAlign: TextAlign.center,
              //se muestran .. para cuando el texto es muy largo
              overflow : TextOverflow.ellipsis,),
            
            
            
        ],
      ),
    );
  }
}