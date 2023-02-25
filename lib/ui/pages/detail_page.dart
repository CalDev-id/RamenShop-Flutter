part of 'pages.dart';

class DetailPage extends StatefulWidget {
  final Food food;

  const DetailPage({Key? key, required this.food}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedIndex = 0;

  List<String> category = [
    'Overview',
    'Ingriedients',
    'Comment',
    'Rating',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: size.height * 0.6,
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          color: secondColor,
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(widget.food.picturePath),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                // IconButton(
                //   onPressed: () {},
                //   icon: Icon(
                //     Icons.favorite_border,
                //     color: Colors.white,
                //   ),
                // ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: size.height * 0.42,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(widget.food.name,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 21)),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.timer,
                      color: mainColor,
                      size: 22,
                    ),
                    Text('30 min',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    SizedBox(width: 20),
                    Icon(
                      Icons.location_on,
                      color: mainColor,
                      size: 22,
                    ),
                    Text('1.4 KM',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    SizedBox(width: 20),
                    Icon(
                      Icons.star,
                      color: mainColor,
                      size: 22,
                    ),
                    Text(widget.food.rate.toString(),
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomMenu(
                    menus: category,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    selectedIndex: selectedIndex),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Text(widget.food.description,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          color: Colors.black54, fontSize: 12)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(color: mainColor, width: 2),
                        ),
                        child: Icon(Icons.chat_outlined, color: mainColor),
                      ),
                      Spacer(),
                      Container(
                          width: 280,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Order Now',
                                style: GoogleFonts.poppins(color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: mainColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              )))
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
