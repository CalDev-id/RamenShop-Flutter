part of 'widget.dart';

class FoodCard extends StatefulWidget {
  final Food food;

  const FoodCard({Key? key, required this.food}) : super(key: key);

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        margin: EdgeInsets.only(right: defaultMargin, bottom: defaultMargin),
        decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Image.asset(
              widget.food.picturePath,
              width: 100,
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.food.name,
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$' + widget.food.price.toString(),
                  style: GoogleFonts.poppins(color: mainColor),
                )
              ],
            ),
            Text(
              widget.food.toko,
              style: GoogleFonts.poppins(
                color: Colors.black45,
              ),
              textAlign: TextAlign.left,
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    onPressed: () {
                      Get.to(() => DetailPage(food: widget.food));
                    },
                    child: Text('Details',
                        style: GoogleFonts.poppins(color: Colors.black))))
          ],
        ));
  }
}
