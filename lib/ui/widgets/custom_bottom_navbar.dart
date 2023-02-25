part of 'widget.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;
  const CustomBottomNavbar(
      {Key? key, required this.selectedIndex, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          color: Colors.transparent,
          child: Row(children: [
            const Spacer(),
            IconButton(
              onPressed: () {
                if (onTap != null) {
                  onTap(0);
                }
              },
              icon: const Icon(
                Icons.home_outlined,
                size: 27,
              ),
              tooltip: 'Home',
              color: mainColor,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                if (onTap != null) {
                  onTap(1);
                }
              },
              icon: const Icon(
                Icons.history,
                size: 25,
              ),
              color: mainColor,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                if (onTap != null) {
                  onTap(2);
                }
              },
              icon: const Icon(
                Icons.search,
                size: 25,
              ),
              color: mainColor,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                if (onTap != null) {
                  onTap(3);
                }
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 25,
              ),
              color: mainColor,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                if (onTap != null) {
                  onTap(3);
                }
              },
              icon: const Icon(
                Icons.person_outline,
                size: 25,
              ),
              color: mainColor,
            ),
            const Spacer(),
          ]),
        ),
      ],
    );
  }
}
