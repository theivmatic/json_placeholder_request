import 'package:flutter/material.dart';

class PostCardWidget extends StatelessWidget {
  final int? userID;
  final String? title;
  final String? post;

  const PostCardWidget(
      {super.key,
      required this.userID,
      required this.title,
      required this.post});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 238, 209, 239),
            
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.person_rounded,
                    size: 100,
                  ),
                  Flexible(
                    child: Text(
                      '$title',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                '$post',
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
