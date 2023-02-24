part of 'pages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
            child: Container(
          height: size.height * .63,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/banner.png"), fit: BoxFit.cover)),
        )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * .40,
            padding: const EdgeInsets.only(top: 0, left: 24, right: 24),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Taste Real Japanese Ramen\nonly here! not in the other',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Taste halal, delicious ramen at affordable prices\nand you don\'t have to bother leaving the house',
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text('Taste now',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
