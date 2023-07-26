import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pay_nav_project/screens/how_it_works.dart';
import 'package:pay_nav_project/widgets/custom_tab_bar.dart';
import 'package:pay_nav_project/screens/my_awards.dart';

class StackHeader extends StatelessWidget {
  const StackHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        // SizedBox(
        //   height: w * 1.3,
        // ),
        const Positioned(
          top: 0,
          right: 0,
          left: 0,
          bottom: 75,
          child: Image(
            image: AssetImage('assets/images/curtain.png'),
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const SizedBox(
                height: 15, //0.018
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Leader Board',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    'How it works',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: const Color(0x00FFFFFF),
                        context: context,
                        builder: (context) => const HowItWorks(),
                      );
                    },
                    child: Image.asset(
                      'assets/images/settings.png',
                      height: 35,
                      width: 32,
                    ),
                  ),
                ],
              ),
              const TabBarAndTabBarView(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 83,
                // width: double.infinity,
                width: w * 0.904,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4ECFF),
                  borderRadius: BorderRadius.circular(23),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3,
                      offset: Offset(0, 3),
                      color: Color.fromARGB(255, 209, 209, 209),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '41',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                        Image.asset(
                          'assets/images/red triangle.png',
                          height: 8,
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset('assets/images/boywithbluetick.png'),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text('Lalit Thakre'),
                    const Spacer(),
                    Text(
                      '2130',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              )
            ],
          ),
        ),
        Positioned(
          bottom: 5,
          left: 0,
          right: 0,
          // top: w * 1.1399,
          // left: w * 0.258,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: 50,
                width: w * 0.48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      color: Color.fromARGB(255, 202, 202, 202),
                    ),
                  ],
                ),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E0082),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const MyAwards())));
                      },
                      child: Text(
                        'My Status & Awards >',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//new

// import 'package:flutter/material.dart';
// import 'package:pay_nav_project/widgets/custom_tab_bar.dart';

// class StackHeader extends StatelessWidget {
//   const StackHeader({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     bool isSmallScreen = w <= 600; // Customize the threshold for small screens.

//     return Stack(
//       children: [
//         SizedBox(
//           height: isSmallScreen ? h * 0.4 : w * 1.278,
//         ),
//         Image.asset(
//           'assets/images/curtain.png',
//           filterQuality: FilterQuality.high,
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 4 : 12),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: isSmallScreen ? h * 0.015 : 15,
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.arrow_back),
//                   ),
//                   SizedBox(
//                     width: isSmallScreen ? 4 : 10,
//                   ),
//                   Text(
//                     'Leader Board',
//                     style: Theme.of(context).textTheme.headline6!.copyWith(
//                           color: Colors.white,
//                           fontSize: isSmallScreen ? 16 : null,
//                         ),
//                   ),
//                   Spacer(),
//                   Text(
//                     'How it works',
//                     style: Theme.of(context).textTheme.subtitle2!.copyWith(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w400,
//                           fontSize: isSmallScreen ? 12 : null,
//                         ),
//                   ),
//                   Image.asset(
//                     'assets/images/settings.png',
//                     height: isSmallScreen ? 25 : 35,
//                     width: isSmallScreen ? 25 : 32,
//                   ),
//                 ],
//               ),
//               const TabBarAndTabBarView(),
//             ],
//           ),
//         ),
//         Positioned(
//           top: isSmallScreen ? h * 0.99 : w * 0.995,
//           child: Container(
//             margin: EdgeInsets.symmetric(horizontal: isSmallScreen ? 8 : 20),
//             padding: EdgeInsets.symmetric(
//                 horizontal: isSmallScreen ? 8 : 20, vertical: 10),
//             height: isSmallScreen ? h * 0.1 : 83,
//             width: isSmallScreen ? w * 0.8 : w * 0.904,
//             decoration: BoxDecoration(
//               color: const Color(0xFFF4ECFF),
//               borderRadius: BorderRadius.circular(isSmallScreen ? 15 : 23),
//               boxShadow: const [
//                 BoxShadow(
//                   blurRadius: 3,
//                   offset: Offset(0, 3),
//                   color: Color.fromARGB(255, 209, 209, 209),
//                 ),
//               ],
//             ),
//             child: Row(
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(
//                       '41',
//                       style: Theme.of(context).textTheme.headline6!.copyWith(
//                             fontWeight: FontWeight.w400,
//                             fontSize: isSmallScreen ? 16 : null,
//                           ),
//                     ),
//                     Image.asset(
//                       'assets/images/red triangle.png',
//                       cacheHeight: isSmallScreen ? 6 : 8,
//                       cacheWidth: isSmallScreen ? 8 : 10,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   width: isSmallScreen ? 4 : 8,
//                 ),
//                 Image.asset('assets/images/boywithbluetick.png'),
//                 SizedBox(
//                   width: isSmallScreen ? 6 : 10,
//                 ),
//                 Text(
//                   'Lalit Thakre',
//                   style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                         fontSize: isSmallScreen ? 12 : null,
//                       ),
//                 ),
//                 Spacer(),
//                 Text(
//                   '2130',
//                   style: Theme.of(context).textTheme.headline6!.copyWith(
//                         fontWeight: FontWeight.w400,
//                         fontSize: isSmallScreen ? 16 : null,
//                       ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Positioned(
//           top: isSmallScreen ? h * 1.1 : w * 1.1399,
//           left: isSmallScreen ? w * 0.15 : w * 0.258,
//           child: Container(
//             padding: const EdgeInsets.all(8),
//             height: isSmallScreen ? h * 0.06 : 50,
//             width: isSmallScreen ? w * 0.7 : w * 0.48,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(isSmallScreen ? 15 : 30),
//               boxShadow: const [
//                 BoxShadow(
//                   blurRadius: 4,
//                   offset: Offset(0, 2),
//                   color: Color.fromARGB(255, 202, 202, 202),
//                 ),
//               ],
//             ),
//             child: Container(
//               height: double.infinity,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: const Color(0xFF1E0082),
//                 borderRadius: BorderRadius.circular(isSmallScreen ? 15 : 30),
//               ),
//               child: Center(
//                 child: TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'My Status & Awards >',
//                     style: Theme.of(context).textTheme.bodyText2!.copyWith(
//                           color: Colors.white,
//                           fontSize: isSmallScreen ? 10 : 13,
//                         ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

//new

// import 'package:flutter/material.dart';
// import 'package:pay_nav_project/widgets/custom_tab_bar.dart';

// class StackHeader extends StatelessWidget {
//   const StackHeader({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double referenceScreenWidth = 411.42857;
//     double screenWidth = MediaQuery.of(context).size.width;
//     double widthFactor = screenWidth / referenceScreenWidth;
//     // bool isSmallScreen =
//     //     screenWidth <= 360.0; // Adjust the threshold for small screens.

//     return Stack(
//       children: [
//         SizedBox(
//           height: screenWidth * 1.278 / referenceScreenWidth * screenWidth,
//         ),
//         Image.asset(
//           'assets/images/curtain.png',
//           filterQuality: FilterQuality.high,
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 12 * widthFactor),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 15 * widthFactor, //0.018
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.arrow_back),
//                   ),
//                   SizedBox(
//                     width: 10 * widthFactor,
//                   ),
//                   Text(
//                     'Leader Board',
//                     style: Theme.of(context).textTheme.headline6!.copyWith(
//                           color: Colors.white,
//                           fontSize: 20 * widthFactor,
//                         ),
//                   ),
//                   Spacer(),
//                   Text(
//                     'How it works',
//                     style: Theme.of(context).textTheme.subtitle2!.copyWith(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w400,
//                           fontSize: 12 * widthFactor,
//                         ),
//                   ),
//                   Image.asset(
//                     'assets/images/settings.png',
//                     height: 35 * widthFactor,
//                     width: 32 * widthFactor,
//                   ),
//                 ],
//               ),
//               const TabBarAndTabBarView(),
//             ],
//           ),
//         ),
//         Positioned(
//           top: screenWidth * 0.995 / referenceScreenWidth * screenWidth,     
//           child: Container(
//             margin: EdgeInsets.symmetric(horizontal: 20 * widthFactor),
//             padding: EdgeInsets.symmetric(
//                 horizontal: 20 * widthFactor, vertical: 10 * widthFactor),
//             height: 83 * widthFactor,
//             width: screenWidth * 0.904 / referenceScreenWidth * screenWidth,
//             decoration: BoxDecoration(
//               color: const Color(0xFFF4ECFF),
//               borderRadius: BorderRadius.circular(23 * widthFactor),
//               boxShadow: const [
//                 BoxShadow(
//                   blurRadius: 3,
//                   offset: Offset(0, 3),
//                   color: Color.fromARGB(255, 209, 209, 209),
//                 ),
//               ],
//             ),
//             child: Row(
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(
//                       '41',
//                       style: Theme.of(context).textTheme.headline6!.copyWith(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 20 * widthFactor,
//                           ),
//                     ),
//                     Image.asset(
//                       'assets/images/red triangle.png',
//                       height: 8 * widthFactor,
//                       width: 10 * widthFactor,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   width: 8 * widthFactor,
//                 ),
//                 Image.asset('assets/images/boywithbluetick.png'),
//                 SizedBox(
//                   width: 10 * widthFactor,
//                 ),
//                 Text(
//                   'Lalit Thakre',
//                   style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                         fontSize: 15 * widthFactor,
//                       ),
//                 ),
//                 SizedBox(
//                   width: 10 * widthFactor,
//                 ),
//                 Text(
//                   '2130',
//                   style: Theme.of(context).textTheme.headline6!.copyWith(
//                         fontWeight: FontWeight.w400,
//                         fontSize: 20 * widthFactor,
//                       ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Positioned(
//           top: screenWidth * 1.1399 / referenceScreenWidth * screenWidth,
//           left: screenWidth * 0.258 / referenceScreenWidth * screenWidth,
//           child: Container(
//             padding: const EdgeInsets.all(8),
//             height: 50 * widthFactor,
//             width: screenWidth * 0.48 / referenceScreenWidth * screenWidth,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(30 * widthFactor),
//               boxShadow: const [
//                 BoxShadow(
//                   blurRadius: 4,
//                   offset: Offset(0, 2),
//                   color: Color.fromARGB(255, 202, 202, 202),
//                 ),
//               ],
//             ),
//             child: Container(
//               height: double.infinity,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: const Color(0xFF1E0082),
//                 borderRadius: BorderRadius.circular(30 * widthFactor),
//               ),
//               child: Center(
//                 child: TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'My Status & Awards >',
//                     style: Theme.of(context).textTheme.bodyText2!.copyWith(
//                           color: Colors.white,
//                           fontSize: 13 * widthFactor,
//                         ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }





// Positioned(
//           top: w * 0.995,
//           child: Container(
//             margin: const EdgeInsets.symmetric(horizontal: 20),
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             height: 83,
//             // width: double.infinity,
//             width: w * 0.904,
//             decoration: BoxDecoration(
//               color: const Color(0xFFF4ECFF),
//               borderRadius: BorderRadius.circular(23),
//               boxShadow: const [
//                 BoxShadow(
//                   blurRadius: 3,
//                   offset: Offset(0, 3),
//                   color: Color.fromARGB(255, 209, 209, 209),
//                 ),
//               ],
//             ),
//             child: Row(
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(
//                       '41',
//                       style: Theme.of(context)
//                           .textTheme
//                           .titleLarge!
//                           .copyWith(fontWeight: FontWeight.w400),
//                     ),
//                     Image.asset(
//                       'assets/images/red triangle.png',
//                       height: 8,
//                       width: 10,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 8,
//                 ),
//                 Image.asset('assets/images/boywithbluetick.png'),
//                 const SizedBox(
//                   width: 6,
//                 ),
//                 const Text('Lalit Thakre'),
//                 const Spacer(),
//                 Text(
//                   '2130',
//                   style: Theme.of(context)
//                       .textTheme
//                       .titleLarge!
//                       .copyWith(fontWeight: FontWeight.w400),
//                 ),
//               ],
//             ),
//           ),
//         ),