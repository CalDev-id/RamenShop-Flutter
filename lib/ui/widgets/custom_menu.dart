part of 'widget.dart';

class CustomMenu extends StatefulWidget {
  final int selectedIndex;
  final List<String> menus;
  final Function(int index) onTap;

  const CustomMenu(
      {Key? key,
      required this.menus,
      required this.onTap,
      required this.selectedIndex})
      : super(key: key);

  @override
  State<CustomMenu> createState() => _CustomMenuState();
}

class _CustomMenuState extends State<CustomMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.menus.length,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: defaultMargin),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.onTap(index);
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == widget.selectedIndex
                              ? mainColor
                              : Colors.transparent,
                          border: Border.all(
                              color: index == widget.selectedIndex
                                  ? Colors.transparent
                                  : mainColor,
                              width: 2)),
                      child: Center(
                        child: Text(
                          widget.menus[index],
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: index == widget.selectedIndex
                                  ? Colors.black
                                  : mainColor),
                        ),
                      ),
                    ),
                  ),
                )));
  }
}
