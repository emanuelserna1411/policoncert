import 'package:flutter/material.dart';
import 'package:policoncert/helpers/list_menu.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: 
        [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
          ),
          const SizedBox(height:50),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Maria Jose M.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.5),),
                    Text('@mjmpuerta')
                  ],
                ),
              ),
              CircleAvatar
              (
                radius: 45,
                backgroundImage: NetworkImage('https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', scale: 1,), 
              )
            ],
          ),
          const SizedBox(height: 45,),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: listMenu.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: listMenu[index].icon,
                  title: Text(listMenu[index].title, style: const TextStyle(fontSize: 20, )),
                  onTap: () => Navigator.pushNamed(context, listMenu[index].url),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
