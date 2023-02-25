part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<String> menus = [
    'All',
    'Ramen',
    'Noodles',
    'Sushi',
    'Dessert',
    'Drinks'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(
            child: Container(
          padding: const EdgeInsets.only(
              top: 40, left: defaultMargin, right: defaultMargin),
          width: double.infinity,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hello Dynavx 👋'),
                Icon(Icons.notifications_none_outlined, size: 25)
              ]),
        )),
        const SizedBox(
          height: 10,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Text('Which ramen do you want to\ntry today?',
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.w500))),
        const SizedBox(
          height: 10,
        ),
        // Row(
        //   children: [
        //     Container(
        //       margin: EdgeInsets.only(left: defaultMargin),
        //       width: 40,
        //       height: 40,
        //       decoration: BoxDecoration(
        //           color: Colors.transparent,
        //           borderRadius: BorderRadius.circular(8),
        //           border: Border.all(color: mainColor, width: 2)),
        //       child: Icon(Icons.tune, color: mainColor),
        //     ),
        //   ],
        // ),
        CustomMenu(
          menus: menus,
          selectedIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ],
    ));
  }
}
