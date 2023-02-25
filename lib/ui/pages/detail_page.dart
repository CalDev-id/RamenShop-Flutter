part of 'pages.dart';

class DetailPage extends StatefulWidget {
  final Food food;

  const DetailPage({Key? key, required this.food}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.food.name),
    );
  }
}
