import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
//import 'package:testapp/Screen/login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "images/buttonBar/app.png",
                width: 35,
                height: 35,
              ),
              const Spacer(),
              Image.asset(
                "images/BBQ_register.gif",
                width: 100,
                height: 100,
              ),
              const Spacer(),

              //Log Out Icon
              MaterialButton(
                onPressed: () {},
                child: const Icon(
                  Icons.logout,
                  size: 35,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          )

          // Image Slide Show
          ,
          ImageSlideshow(
            indicatorColor: const Color.fromARGB(255, 156, 50, 8),
            onPageChanged: (value) {
              debugPrint('Page changed: $value');
            },
            autoPlayInterval: 4000,
            isLoop: true,
            children: [
              Image.asset(
                'images/img/Bbq.gif',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/img/wagyu.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/img/wagyu2.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/img/wagyu3.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/img/menu.jpg',
                fit: BoxFit.cover,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "images/coupon.png",
                      width: 30,
                      height: 30,
                    ),
                    const Text("Promotion",
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Image.asset(
                      "images/star.png",
                      width: 30,
                      height: 30,
                    ),
                    const Text("Point ",
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Image.asset(
                      "images/food.png",
                      width: 30,
                      height: 30,
                    ),
                    const Text("Menu",
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Image.asset(
                      "images/new.png",
                      width: 30,
                      height: 30,
                    ),
                    const Text("New",
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended Menu",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffDDDDDD),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: [
                      const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("images/menu/menu1.jpg")),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "เนื้อวากิว A5",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Wagyu A5",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "1,500 ฿",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 3, 78, 43)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => {},
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            //border: Border.all(width: 1.0, color: Colors.blue),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'Add',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffDDDDDD),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: [
                      const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("images/menu/menu2.jpg")),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "หอยนางรมญี่ปุ่น",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Japanese Oyster",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "870 ฿",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 3, 78, 43)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => {},
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            //border: Border.all(width: 1.0, color: Colors.blue),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'Add',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffDDDDDD),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: [
                      const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("images/menu/menu4.jpg")),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "แซลม่อนซาซิมิ 500กรัม",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Salmon Sashimi 500g",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "560 ฿",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 3, 78, 43)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => {},
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            //border: Border.all(width: 1.0, color: Colors.blue),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'Add',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
