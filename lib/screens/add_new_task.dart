import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/constants/color.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Header
              Container(
                width: deviceWidth,
                height: deviceHeight / 10,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                      image: AssetImage(
                          "lib/assets/images/add_new_task_header.png"),
                      fit: BoxFit.cover),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                      child: Text(
                        "Add new task",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 21),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              //Task Title Text
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Task Title"),
              ),
              //Task Input
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration:
                      InputDecoration(filled: true, fillColor: Colors.white),
                ),
              ),
              //Categories Row
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Category"),
                    //category 1
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(milliseconds: 300),
                            content: Text("Category 1 selected"),
                          ),
                        );
                      },
                      child: Image.asset("lib/assets/images/category_1.png"),
                    ),
                    //category 2
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(milliseconds: 300),
                            content: Text("Category 2 selected"),
                          ),
                        );
                      },
                      child: Image.asset("lib/assets/images/category_2.png"),
                    ),
                    //category 3
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(milliseconds: 300),
                            content: Text("Category 3 selected"),
                          ),
                        );
                      },
                      child: Image.asset("lib/assets/images/category_3.png"),
                    ),
                  ],
                ),
              ),
              //Date & Time Row
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Date"),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true, fillColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Time"),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true, fillColor: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Notes Column
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Notes"),
              ),
              const SizedBox(
                height: 300,
                child: TextField(
                  expands: true,
                  maxLines: null,
                  decoration: InputDecoration(
                      filled: true, fillColor: Colors.white, isDense: true),
                ),
              ),
              //Save Button
              ElevatedButton(
                onPressed: () {},
                child: const Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
