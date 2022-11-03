import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:using_getx/screen.dart';
import 'package:using_getx/screen_ctr.dart';
//import 'package:flutter_svg/svg.dart';
//import 'package:get_storage/get_storage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.red,
        title: const Text('USING GETX'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<HomecreenCtr>(
              init: HomecreenCtr(),
              builder: (value) {
                return Image.asset(
                  'images/${value.imgName}',
                  height: 300,
                );
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<HomecreenCtr>(
                init: HomecreenCtr(),
                builder: (value) {
                  return ElevatedButton(
                    onPressed: () {
                      value.changeImage();
                    },
                    child: const Text('change image'),
                  );
                },
              ),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  // Getx page Navigator
                  //Get.changeTheme(ThemeData.dark());
                  Get.to(() => const HomeScreen(aytName: 'LE CORAN', active: true,));
                },
                child: const Text('screen two'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
