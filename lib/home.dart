import 'package:bmi/result.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double weight = 90;
  double height = 178;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'محاسبه شاخص توده بدنی',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black26),
                      color: Colors.white),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6),
                  child: Text(
                    '${weight.toStringAsFixed(2)} کیلوگرم',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black26),
                      color: Colors.white),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6),
                  child: Text(
                    '${height.toStringAsFixed(2)} سانتی متر',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black26),
                          color: Colors.white),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 6),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 6),
                                        child: Text(
                                          ' کیلوگرم',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                      ),
                                      Container(
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 6),
                                        child: Text(
                                          'وزن',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.5,
                              child: SfSlider.vertical(
                                min: 40,
                                max: 150.0,
                                value: weight,
                                interval: 20,
                                showTicks: true,
                                showLabels: true,
                                enableTooltip: true,
                                minorTicksPerInterval: 1,
                                onChanged: (dynamic value) {
                                  setState(() {
                                    weight = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black26),
                          color: Colors.white),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 6),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 6),
                                        child: Text(
                                          'سانتی متر',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                      ),
                                      Container(
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 6),
                                        child: Text(
                                          'قد',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.5,
                              child: SfSlider.vertical(
                                min: 130,
                                max: 230.0,
                                value: height,
                                interval: 20,
                                showTicks: true,
                                showLabels: true,
                                enableTooltip: true,
                                minorTicksPerInterval: 1,
                                onChanged: (dynamic value) {
                                  setState(() {
                                    height = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    onPressed: () {
                  Result.result=(weight/(height*height))*10000;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Result()),
                      );
                    },
                    child: Text('Lets GO')))
          ],
        ),
      ),
    );
  }
}
