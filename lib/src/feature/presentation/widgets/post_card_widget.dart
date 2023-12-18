import 'package:flutter/material.dart';

class PostCardWidget extends StatelessWidget {
  const PostCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.amber),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(color: Colors.cyan),
                  ),
                  const Column(
                    children: [
                      Text('11'),
                      Text('22'),
                    ],
                  )
                ],
              ),
              const Text('sss'),
            ],
          ),
        ),
      ),
    );
  }
}
