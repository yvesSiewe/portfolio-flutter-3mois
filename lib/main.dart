

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custumchild',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            BageICons(),
            Icon(Icons.person)
          ],
          title: Text('Custum'),
        ),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              // height: 200,
              child: CustomMultiChildLayout(
                delegate: PositionDelagate(),
                children: [
                  LayoutId(
                    id: 'bloc1', 
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    )
                  ),
                  LayoutId(
                    id: 'bloc2', 
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                    )
                  )
                ],
              ),
            ),
            Container(
              width: 250,
              height: 250,
              color: Colors.black,
              child: CustomMultiChildLayout(
                delegate: PositionOnCoin(),
                children: [
                  LayoutId(
                    id: 'green', 
                    child: ContainerStyle(color: Colors.green)
                  ),
                  LayoutId(id: 'blue', 
                  child: ContainerStyle(color: Colors.blue)
                  ),
                  LayoutId(
                    id: 'red', 
                    child: ContainerStyle(color: Colors.red)
                  ),
                  LayoutId(
                    id: 'yellow', 
                    child: ContainerStyle(color: Colors.yellow)
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// le delegue qui vas positionner nos 4 elements au coins de leur parent

class PositionOnCoin extends MultiChildLayoutDelegate{

  @override
  void performLayout(Size size) {
    if(hasChild('green')){
      layoutChild('green', BoxConstraints.tight(const Size(60, 60)));
      positionChild('green', Offset(0, 0));
    }
    
    if(hasChild('red')){
      Size redSize = layoutChild('red', BoxConstraints.tight(const Size(60, 60)));
      positionChild('red', Offset(size.width - redSize.width, 0));
    }

    if(hasChild('yellow')){
      Size redSize = layoutChild('yellow', BoxConstraints.tight(const Size(60, 60)));
      positionChild('yellow', Offset(0, size.height - redSize.height));
    }

    if(hasChild('blue')){
      Size blueSize = layoutChild('blue', BoxConstraints.tight(const Size(60, 60)));
      positionChild('blue', Offset(size.width - blueSize.width, size.height - blueSize.height));
    }
  }

    @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => false;
}


// le delegue qui vas positionner tout nos enfants 

class PositionDelagate extends MultiChildLayoutDelegate{

  @override
  void performLayout(Size size) {
    Size? bloc1size;
    if(hasChild('bloc1')){
      bloc1size = layoutChild('bloc1', BoxConstraints.tight(const Size(100, 100)));
      positionChild('bloc1', Offset((size.width - bloc1size.width)/2, 0));
    }

    if(hasChild('bloc2') && bloc1size != null){
      Size bloc2 = layoutChild('bloc2', BoxConstraints.tight(const Size(50, 50)));
      positionChild('bloc2', Offset((size.width - bloc2.width)/2, bloc1size.height +10));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => false;
}


class BageICons extends StatelessWidget{
  const BageICons({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 40,
      width: 40,
      child: CustomMultiChildLayout(
        delegate: BageIconsDelegate(),
        children: [
          LayoutId(
            id: 'icon', 
            child: Icon(Icons.shop_2_outlined)
          ),
          LayoutId(
            id: 'badge', 
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey  
              ),
              child: Center(
                child: Text(
                  '3',
                  style: TextStyle(
                    color: Colors.red
                  ),
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}



class BageIconsDelegate extends MultiChildLayoutDelegate{
  
  @override
  void performLayout(Size size){
    if(hasChild('icon')){
      layoutChild('icon', BoxConstraints.loose(size));
      positionChild('icon', Offset(0, 7));
    }

    if(hasChild('badge')){
      Size badgeSize = layoutChild('badge', BoxConstraints.tight(const Size(20, 20)));
      // placer le badge en haut à droite de l'icône
      positionChild('badge', Offset(15, 0));
    }
  }

   @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => false;
}



class ContainerStyle extends StatelessWidget{
  final Color color;
  const ContainerStyle({super.key, required this.color});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      color: color,
    );
  }
}