import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black26,
          ),
        ),
        SizedBox(
          width: 270,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 220,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                color:   Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Spacer(flex: 2,),
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
                    ),
                    SizedBox(height: 15),
                    Text('Ishika Dhameliya',style: TextStyle(fontSize: 18,color: Colors.black),),
                    SizedBox(height: 5),
                    Text('+91 7984544088',style: TextStyle(fontSize: 12,color: Colors.black),),
                    Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: 270,
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.people,color: Colors.grey.shade300,size: 27,),
                          const SizedBox(width: 20),
                          const Text('People',style: TextStyle(color: Colors.black,fontSize: 16),),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.category,color: Colors.grey.shade300,size: 27,),
                          const SizedBox(width: 20),
                          const Text('Category',style: TextStyle(color: Colors.black,fontSize: 16),),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.call,color: Colors.grey.shade300,size: 27,),
                          const SizedBox(width: 20),
                          const Text('calls',style: TextStyle(color: Colors.black,fontSize: 16),),

                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.bookmark_border,color: Colors.grey.shade300,size: 27,),
                          const SizedBox(width: 20),
                          const Text('Saved News',style: TextStyle(color: Colors.black,fontSize: 16),),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.settings,color: Colors.grey.shade300,size: 27,),
                          const SizedBox(width: 20),
                          const Text('Settings',style: TextStyle(color: Colors.black,fontSize: 16),),
                        ],
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}