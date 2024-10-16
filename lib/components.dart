import 'package:flutter/material.dart';

Widget chatItem(String name) => Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('Images/senior3.png'),
            radius: 20,
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            children: [
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                "Hey buddy",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.check_circle,
            color: Colors.grey,
          ),
        ],
      ),
    );
