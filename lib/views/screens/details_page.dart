import 'package:flutter/material.dart';

import '../../res/models.dart';


class newsDetailPage extends StatefulWidget {
  const newsDetailPage({Key? key}) : super(key: key);

  @override
  State<newsDetailPage> createState() => _newsDetailPageState();
}

class _newsDetailPageState extends State<newsDetailPage> {
  @override
  Widget build(BuildContext context) {
    NewsData? res = ModalRoute.of(context)!.settings.arguments as NewsData?;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        title: Text(res!.source,style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 650,
          padding: const EdgeInsets.all(5),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.shade300,),
          child: Column(
            children: [
              Container(
                height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: NetworkImage(res.image), fit: BoxFit.cover)),
              ),
              const SizedBox(height: 10),
              Text(
                "Author - ${res.author}",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Text(
                res.description,
                style:
                const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              Text(
                res.content,
                style:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}