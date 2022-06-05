import 'package:biodent/layout/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../shared/components/components.dart';
import 'cubit/cubit.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double width = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          int index = cubit.selectedVal;
          return (width <= 600)
              ? Scaffold(
                  body: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            width: screenSize.width,
                            color: Colors.grey[200],
                            child: Container(
                              // image below the top bar
                              child: SizedBox(
                                height: screenSize.height * 0.45,
                                width: screenSize.width,
                                child: Image.asset(
                                  'assets/images/header.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            //top: screenSize.height * 0.40,
                            left: screenSize.width / 50,
                            right: screenSize.width / 50,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ExpansionTile(
                                      collapsedBackgroundColor:
                                          Colors.grey[400],
                                      backgroundColor: Colors.grey[400],
                                      title: (width <= 600)
                                          ? Text('About us',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold))
                                          : Text('About us',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                      // Contents
                                      children: [
                                        drawSmallListTile('Greetings', 1, cubit),
                                        drawSmallListTile('Certifications', 2, cubit)
                                      ],
                                    ),
                                    ExpansionTile(
                                      collapsedBackgroundColor:
                                          Colors.grey[400],
                                      backgroundColor: Colors.grey[400],
                                      title: (width <= 600)
                                          ? Text('Products',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold))
                                          : Text('Products',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                      // Contents
                                      children: [
                                        drawSmallListTile('Denject', 3, cubit),
                                        drawSmallListTile('LeEject', 4, cubit),
                                        drawSmallListTile('Canal Clean', 5, cubit),
                                        drawSmallListTile(
                                            'Irrigation Needle Tips', 6, cubit),
                                        drawSmallListTile('Prebent', 7, cubit),
                                      ],
                                    ),
                                    ExpansionTile(
                                      collapsedBackgroundColor:
                                          Colors.grey[400],
                                      backgroundColor: Colors.grey[400],
                                      title: (width <= 600)
                                          ? Text('News',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold))
                                          : Text('News',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                      // Contents
                                      children: [
                                        drawSmallListTile('news', 1, cubit),
                                      ],
                                    ),
                                    ExpansionTile(
                                      collapsedBackgroundColor:
                                          Colors.grey[400],
                                      backgroundColor: Colors.grey[400],
                                      title: (width <= 600)
                                          ? Text('Order & Communications',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold))
                                          : Text('Order & Communications',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                      // Contents
                                      children: [
                                        drawSmallListTile(
                                            'Order & Communications', 9, cubit),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Direct Order Product',
                                      style: TextStyle(
                                          color: Colors.cyan,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.note_add_outlined,
                                      size: 50,
                                      color: Colors.orangeAccent,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        cubit
                                            .launchURL('http://biodent.co.kr/');
                                      },
                                      child: Text(
                                        'EMIAL : BIODENT@BIOdent.co.kr',
                                        style: TextStyle(
                                            color: Colors.orangeAccent),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'TEL : 82-31-941-2884',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Fax : 82-31-941-1538',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'You',
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Expanded(
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  color: Colors.blueAccent,
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        Colors.red,
                                                        Colors.redAccent
                                                      ]),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey,
                                                        blurRadius: 2.0,
                                                        offset:
                                                            Offset(2.0, 2.0))
                                                  ]),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                  child: Text(
                                                    'Tube',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              )),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'LeEject',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    drawUrlRow(
                                        'https://www.youtube.com/watch?v=F-1QdiUUNhA',
                                        'Advanced Technology and Capital',
                                        cubit),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    drawUrlRow(
                                        'https://www.youtube.com/watch?v=MnJKVqKVtnw',
                                        'LeEject Instruction video',
                                        cubit),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    drawUrlRow(
                                        'https://www.youtube.com/watch?v=FlIlLRwErTs',
                                        'LeEject video Instructions',
                                        cubit),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Canal Clean',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    drawUrlRow(
                                        'https://www.youtube.com/watch?v=5yo9SkMKM2I',
                                        'Irrigation Probe Canal Clean 1',
                                        cubit),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    drawUrlRow(
                                        'http://files.ucloud.com/pf/D291980_6546224_693882',
                                        'Irrigation Probe Canal Clean 2',
                                        cubit),
                                    SizedBox(
                                      height: 10,
                                    )

                                    //  Image.asset('assets/images/contact us.jpg'),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: (width > 600) ? 2 : 3,
                                child: cubit.selectedVal != 9
                                    ? Image.asset('assets/images/$index.jpg')
                                    : Column(
                                        children: [
                                          Image.asset(
                                              'assets/images/$index.jpg'),
                                          Container(
                                            height: screenSize.height * 0.4,
                                            color: Colors.white,
                                            child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                drawFooterCard(
                                                    'Denject',
                                                    'http://biodent.co.kr/home/file/denject.pdf',
                                                    11,
                                                    cubit),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 45),
                                                  child: drawFooterCard(
                                                      'LeEject',
                                                      'http://biodent.co.kr/home/file/leeject.pdf',
                                                      12,
                                                      cubit),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 45),
                                                  child: drawFooterCard(
                                                      'Canal Clean',
                                                      'http://biodent.co.kr/home/file/canal.pdf',
                                                      13,
                                                      cubit),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 45),
                                                  child: drawFooterCard(
                                                      'Irrigation needle tips',
                                                      'http://biodent.co.kr/home/file/irrigatino.pdf',
                                                      14,
                                                      cubit),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: drawFooterCard(
                                                      'Prebent Needle Tips',
                                                      'http://biodent.co.kr/home/file/prebent.pdf',
                                                      15,
                                                      cubit),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            //top: screenSize.height * 0.40,
                            left: screenSize.width / 50,
                            right: screenSize.width / 50,
                          ),
                          child: Container(
                              child: Image.asset(
                            'assets/images/footer.jpg',
                            fit: BoxFit.fill,
                          )),
                        ),
                      ],
                    ),
                  ),
                )
              : Scaffold(
                  body: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            width: screenSize.width * 0.8,
                            color: Colors.grey[200],
                            child: Container(
                              // image below the top bar
                              child: SizedBox(
                                height: screenSize.height * 0.45,
                                width: screenSize.width,
                                child: Image.asset(
                                  'assets/images/header.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            //top: screenSize.height * 0.40,
                            left: screenSize.width / 10,
                            right: screenSize.width / 10,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ExpansionTile(
                                      collapsedBackgroundColor:
                                          Colors.grey[400],
                                      backgroundColor: Colors.grey[400],
                                      title: (width <= 600)
                                          ? Text('About us',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold))
                                          : Text('About us',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                      // Contents
                                      children: [
                                        drawListTile('Greetings', 1, cubit),
                                        drawListTile('Certifications', 2, cubit)
                                      ],
                                    ),
                                    ExpansionTile(
                                      collapsedBackgroundColor:
                                          Colors.grey[400],
                                      backgroundColor: Colors.grey[400],
                                      title: (width <= 600)
                                          ? Text('Products',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold))
                                          : Text('Products',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                      // Contents
                                      children: [
                                        drawListTile('Denject', 3, cubit),
                                        drawListTile('LeEject', 4, cubit),
                                        drawListTile('Canal Clean', 5, cubit),
                                        drawListTile(
                                            'Irrigation Needle Tips', 6, cubit),
                                        drawListTile('Prebent', 7, cubit),
                                      ],
                                    ),
                                    ExpansionTile(
                                      collapsedBackgroundColor:
                                          Colors.grey[400],
                                      backgroundColor: Colors.grey[400],
                                      title: (width <= 600)
                                          ? Text('News',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold))
                                          : Text('News',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                      // Contents
                                      children: [
                                        drawListTile('news', 1, cubit),
                                      ],
                                    ),
                                    ExpansionTile(
                                      collapsedBackgroundColor:
                                          Colors.grey[400],
                                      backgroundColor: Colors.grey[400],
                                      title: (width <= 600)
                                          ? Text('Order & Communications',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold))
                                          : Text('Order & Communications',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                      // Contents
                                      children: [
                                        drawListTile(
                                            'Order & Communications', 9, cubit),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Direct Order Product',
                                      style: TextStyle(
                                          color: Colors.cyan,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.note_add_outlined,
                                      size: 50,
                                      color: Colors.orangeAccent,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        cubit
                                            .launchURL('http://biodent.co.kr/');
                                      },
                                      child: Text(
                                        'EMIAL : BIODENT@BIOdent.co.kr',
                                        style: TextStyle(
                                            color: Colors.orangeAccent),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'TEL : 82-31-941-2884',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Fax : 82-31-941-1538',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'You',
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Expanded(
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  color: Colors.blueAccent,
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        Colors.red,
                                                        Colors.redAccent
                                                      ]),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey,
                                                        blurRadius: 2.0,
                                                        offset:
                                                            Offset(2.0, 2.0))
                                                  ]),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                  child: Text(
                                                    'Tube',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              )),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'LeEject',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    drawUrlRow(
                                        'https://www.youtube.com/watch?v=F-1QdiUUNhA',
                                        'Advanced Technology and Capital',
                                        cubit),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    drawUrlRow(
                                        'https://www.youtube.com/watch?v=MnJKVqKVtnw',
                                        'LeEject Instruction video',
                                        cubit),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    drawUrlRow(
                                        'https://www.youtube.com/watch?v=FlIlLRwErTs',
                                        'LeEject video Instructions',
                                        cubit),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Canal Clean',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    drawUrlRow(
                                        'https://www.youtube.com/watch?v=5yo9SkMKM2I',
                                        'Irrigation Probe Canal Clean 1',
                                        cubit),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    drawUrlRow(
                                        'http://files.ucloud.com/pf/D291980_6546224_693882',
                                        'Irrigation Probe Canal Clean 2',
                                        cubit),
                                    SizedBox(
                                      height: 10,
                                    )

                                    //  Image.asset('assets/images/contact us.jpg'),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: (width > 600) ? 2 : 3,
                                child: cubit.selectedVal != 9
                                    ? Image.asset('assets/images/$index.jpg')
                                    : Column(
                                        children: [
                                          Image.asset(
                                              'assets/images/$index.jpg'),
                                          Container(
                                            height: screenSize.height * 0.4,
                                            color: Colors.white,
                                            child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                drawFooterCard(
                                                    'Denject',
                                                    'http://biodent.co.kr/home/file/denject.pdf',
                                                    11,
                                                    cubit),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 45),
                                                  child: drawFooterCard(
                                                      'LeEject',
                                                      'http://biodent.co.kr/home/file/leeject.pdf',
                                                      12,
                                                      cubit),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 45),
                                                  child: drawFooterCard(
                                                      'Canal Clean',
                                                      'http://biodent.co.kr/home/file/canal.pdf',
                                                      13,
                                                      cubit),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 45),
                                                  child: drawFooterCard(
                                                      'Irrigation needle tips',
                                                      'http://biodent.co.kr/home/file/irrigatino.pdf',
                                                      14,
                                                      cubit),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: drawFooterCard(
                                                      'Prebent Needle Tips',
                                                      'http://biodent.co.kr/home/file/prebent.pdf',
                                                      15,
                                                      cubit),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            //top: screenSize.height * 0.40,
                            left: screenSize.width / 10,
                            right: screenSize.width / 10,
                          ),
                          child: Image.asset('assets/images/footer.jpg'),
                        ),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
