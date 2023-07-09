import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController controller;
  // ignore: unused_field
  static const length = 4;
  final pageIndexNotifier = ValueNotifier<int>(0);
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String assetName = 'images/logo.jpg';

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: const Color(0xff1873e8), //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: const Color(0xFF1873e8),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: const Color(0xFF1873e8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 1),
                                    child: Text("Lapasov Shaxzod",
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 16)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 1, 5, 5),
                                    child: Text("AC NO: XXXXXXXXX732",
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12.0)),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                                maxRadius: 26,
                                minRadius: 26,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  'images/logo.jpg',
                                  height: 26,
                                  width: 26,
                                  fit: BoxFit.fitHeight,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: getSingleChildScrollView(),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xff347591),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card, color: Colors.grey),
                label:
                   "Cards"),
            BottomNavigationBarItem(
                icon: Icon(Icons.table_chart, color: Colors.grey),
                label: "Stock"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, color: Colors.grey),
                label:
                    "Profile", )
          ],
          currentIndex: 0,
          iconSize: 18,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.deepPurple,
        ));
  }

  // PageViewIndicator _buildIndicator() {
  //   return PageViewIndicator(
  //     pageIndexNotifier: pageIndexNotifier,
  //     length: length,
  //     indicatorPadding: EdgeInsets.fromLTRB(3, 8, 3, 8),
  //     normalBuilder: (animationController) => Circle(
  //           size: 4.0,
  //           color: Colors.grey,
  //         ),
  //     highlightedBuilder: (animationController) => ScaleTransition(
  //           scale: CurvedAnimation(
  //             parent: animationController,
  //             curve: Curves.ease,
  //           ),
  //           child: Circle(
  //             size: 6.0,
  //             color: Colors.black45,
  //           ),
  //         ),
  //   );
  // }

  Widget getSingleChildScrollView() {
    String assetElectricity = 'images/electricity.svg';
    String assetRecharge = 'images/recharge.svg';
    String assetSchoolFees = 'images/schoolfees.svg';
    String assetMovie = 'images/popcorn.svg';
    String assetBus = 'images/bus.svg';
    String assetTrain = 'images/train.svg';
    String assetFlight = 'images/airplane.svg';
    String assetRelief = 'images/relief.svg';
    String assetUPI = 'images/upi.svg';
    String assetQR = 'images/qr_code.svg';
    String assetBalance = 'images/balance.svg';
    String assetTransactions = 'images/transactions.svg';
    String assetLoan = 'images/loan.svg';
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                color: const Color(0xFF1873e8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 8, 10, 7),
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0)),
                          color: Color(0xffa4d0a0)),
                      padding: const EdgeInsets.fromLTRB(18.0, 8.0, 18.0, 8.0),
                      child: const Text("Send Money",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontFamily: "AvenirNext",
                              fontStyle: FontStyle.normal,
                              fontSize: 12.0)),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 8, 10, 7),
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0)),
                          color: Color(0xffa4d0a0)),
                      padding: const EdgeInsets.fromLTRB(18.0, 8.0, 18.0, 8.0),
                      child: const Text("Request Money",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontFamily: "AvenirNext",
                              fontStyle: FontStyle.normal,
                              fontSize: 12.0)),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.fromLTRB(5, 0, 16, 0),
                color: const Color(0xff1873e8),
                child: ListView(
                  // This next line does the trick.
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                              maxRadius: 26,
                              minRadius: 26,
                              backgroundColor: const Color(0xFF0a4fa8),
                              child: SvgPicture.asset(
                                assetUPI,
                                semanticsLabel: 'Logo',
                                width: 22,
                                height: 22,
                              )),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Text("UPI",
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "AvenirNext",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                              maxRadius: 26,
                              minRadius: 26,
                              backgroundColor: const Color(0xFF0a4fa8),
                              child: SvgPicture.asset(
                                assetQR,
                                color: const Color(0xddffffff),
                                semanticsLabel: 'Logo',
                                width: 22,
                                height: 22,
                              )),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Text("Scan",
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "AvenirNext",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                              maxRadius: 26,
                              minRadius: 26,
                              backgroundColor: const Color(0xFF0a4fa8),
                              child: SvgPicture.asset(
                                assetBalance,
                                color: const Color(0xddffffff),
                                semanticsLabel: 'Logo',
                                width: 22,
                                height: 22,
                              )),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Text("Balance",
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "AvenirNext",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                              maxRadius: 26,
                              minRadius: 26,
                              backgroundColor: const Color(0xFF0a4fa8),
                              child: SvgPicture.asset(
                                assetTransactions,
                                semanticsLabel: 'Logo',
                                color: const Color(0xddffffff),
                                width: 22,
                                height: 22,
                              )),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Text("Transactions",
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "AvenirNext",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                              maxRadius: 26,
                              minRadius: 26,
                              backgroundColor: const Color(0xFF0a4fa8),
                              child: SvgPicture.asset(
                                assetLoan,
                                semanticsLabel: 'Logo',
                                color: const Color(0xddffffff),
                                width: 22,
                                height: 22,
                              )),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Text("Quick Loan",
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "AvenirNext",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(5, 6, 5, 0),
                height: 150,
                child: PageView(
                  onPageChanged: (index) => pageIndexNotifier.value = index,
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 6, 10, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2017/08/07/19/45/ecommerce-2607114_640.jpg",
                          height: 150.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 6, 10, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2017/08/07/19/45/ecommerce-2607114_640.jpg",
                          height: 150.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 6, 10, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2017/08/07/19/45/ecommerce-2607114_640.jpg",
                          height: 150.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 6, 10, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2017/08/07/19/45/ecommerce-2607114_640.jpg",
                          height: 150.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // _buildIndicator(),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 8, 8, 8),
                  child: Text(" QUICK PAYMENT",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontFamily: "AvenirNext",
                          fontStyle: FontStyle.normal,
                          fontSize: 12)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 22, 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: const BoxDecoration(
                                  color:
                                      Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                      assetElectricity,
                                      semanticsLabel: 'Logo',
                                      width: 24,
                                      height: 24,
                                    ))),
                            const Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                                child: Text("Electricity",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "AvenirNext",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: const BoxDecoration(
                                  color:
                                      Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                      assetRecharge,
                                      semanticsLabel: 'Logo',
                                      width: 24,
                                      height: 24,
                                    ))),
                            const Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                                child: Text("Recharge",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "AvenirNext",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: const BoxDecoration(
                                  color:
                                      Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                      assetSchoolFees,
                                      semanticsLabel: 'Logo',
                                      width: 18,
                                      height: 18,
                                    ))),
                            const Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                                child: Text("School Fees",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "AvenirNext",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: const BoxDecoration(
                                  color:
                                      Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                      assetMovie,
                                      semanticsLabel: 'Logo',
                                      width: 24,
                                      height: 24,
                                    ))),
                            const Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                                child: Text("Movie",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "AvenirNext",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: const BoxDecoration(
                                  color:
                                      Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                      assetBus,
                                      semanticsLabel: 'Logo',
                                      width: 24,
                                      height: 24,
                                    ))),
                            const Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                                child: Text("Bus",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "AvenirNext",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: const BoxDecoration(
                                  color:
                                      Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                      assetFlight,
                                      semanticsLabel: 'Logo',
                                      width: 24,
                                      height: 24,
                                    ))),
                            const Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                                child: Text("Flight",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "AvenirNext",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: const BoxDecoration(
                                  color:
                                      Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                      assetTrain,
                                      semanticsLabel: 'Logo',
                                      width: 24,
                                      height: 24,
                                    ))),
                            const Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                                child: Text("Train",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "AvenirNext",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding:
                                    const EdgeInsets.all(1.0), // borde width
                                decoration: const BoxDecoration(
                                  color:
                                      Color(0x231873e8), // border color
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                    maxRadius: 28,
                                    minRadius: 28,
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                      assetRelief,
                                      semanticsLabel: 'Logo',
                                      width: 24,
                                      height: 24,
                                    ))),
                            const Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 15),
                                child: Text("Kerala Relief",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "AvenirNext",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12)),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
