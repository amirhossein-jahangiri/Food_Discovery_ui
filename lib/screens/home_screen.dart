import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarBuilder(context),
      body:_bodyBuilder(context),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            _navigationItemsBuilder(context,Icons.home,'HOME'),
            _navigationItemsBuilder(context ,Icons.shopping_cart, 'SHOP'),
            _navigationItemsBuilder(context ,Icons.settings, 'SETTINGS'),
            _navigationItemsBuilder(context ,Icons.person, 'PROFILE'),
          ],
        currentIndex: 0,
        selectedItemColor: Colors.black,
      ),
    );
  }
  
  
  
  BottomNavigationBarItem _navigationItemsBuilder(context,IconData icon, String label){
    return BottomNavigationBarItem(
      icon: Icon(icon , color: Colors.black,),
      label: label,
      tooltip: label,
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }


  AppBar _appBarBuilder(context){
    return AppBar(
      title: Text(
        'Discovery',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      leading: Icon(Icons.menu),
      actions: [
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.search),
          splashColor: Theme.of(context).colorScheme.secondary,
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.shopping_cart),
          splashColor: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }

  Widget _bodyBuilder(context){
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                _itemsBuilder(context,'Bars & Hotels', '16 Place','beer'),
                _itemsBuilder(context,'Fine Dining', '14 Place','dining'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                _itemsBuilder(context,'Cafes', '16 Place','cafe'),
                _itemsBuilder(context,'Nearby', '14 Place','tracking'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                _itemsBuilder(context,'Fast Foods', '16 Place','cuisine'),
                _itemsBuilder(context,'Featured Foods', '14 Place','fast-food'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemsBuilder(context, String title, String subTitle, String image,){
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10.0),
        color: Theme.of(context).colorScheme.primary,
        child: OutlinedButton(
          onPressed: (){},
          style: ButtonStyle(
            overlayColor: MaterialStateColor.resolveWith((states) =>
              Theme.of(context).colorScheme.secondary,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/main/$image.png',
                height: 95.0,
              ),
              FittedBox(
                fit: BoxFit.none,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              SizedBox(height:5.0),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyText2,
              )
            ],
          ),
        ),
      ),
    );
  }


}
