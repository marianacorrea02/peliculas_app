import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/castings_card.dart';


//stlessw
class DetailsScreen extends StatelessWidget {
 
 //cambiar por instancia de movie
  @override
  Widget build(BuildContext context) {
    //recibir argumentos si es nullo manda no-movie
    final String movie = ModalRoute.of(context)?.settings.arguments.toString()??'no-movie';
    return  Scaffold(
      //recibe sliver
      body: CustomScrollView(
        //widgets para scroll
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
                [
                  _PosterAndTitle(),
                  _Overview(),
                  _Overview(),
                  _Overview(),
                  _Overview(),
                  _Overview(),
                  _Overview(),
                  SizedBox(height: 10,),
                  CastingCards(),

                ]
              )
            )
        ],
      ),
    );
  }
} 
class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      //sliverApp bar es como el app bar pero se puede cambiar el alto y ancho, no es fijo
      backgroundColor: Colors.green,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          //imagen traslucida
          color: Colors.black12,
          child: Text('data', 
          style: TextStyle(fontSize: 16),),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'), 
          image: NetworkImage('https://via.placeholder.com/500x300'),
          //para que la imagen ocupe todoo el espacio sin perder las dimensiones
          fit: BoxFit.cover,
          )
      ),

    );
  }
}

class _PosterAndTitle extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder:AssetImage('assets/no-image.jpg'), 
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150,),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('movie',style: textTheme.headline5,overflow: TextOverflow.ellipsis,maxLines: 2,),
              Text('movie.originalTitle',style: textTheme.subtitle1,overflow: TextOverflow.ellipsis,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.star_border_outlined, size:25, color: Colors.green,),
                  SizedBox(width: 10,),
                  Text('movie.average', style: textTheme.caption,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
class _Overview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),

      child: Text('loMinim occaecat non ex voluptate adipisicing minim aliqua. Eiusmod adipisicing labore ex ipsum laboris eu id sit nisi laboris anim exercitation. Ut esse commodo velit velit.',
      textAlign: TextAlign.justify,
      style: Theme.of(context).textTheme.subtitle1,
      
      ),
    );
  }
}