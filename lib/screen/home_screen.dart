import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:randomnumber/constant/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '랜덤 숫자 생성기 ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: RED_COLOR,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    123,
                    456,
                    789,
                  ]
                  .asMap()
                  .entries
                      .map(
                        (x) => Padding(
                          padding:  EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: x
                                .toString()
                                .split('')
                                .map(
                                  (y) => Image.asset(
                                    'asset/img/$y.png',
                                    height: 70.0,
                                    width: 50.0,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: RED_COLOR,
                  ),
                  onPressed: () {},
                  child: Text('생성하기'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
