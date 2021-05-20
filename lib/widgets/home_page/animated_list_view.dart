import 'package:animations/widgets/home_page/list_data.dart';
import 'package:flutter/widgets.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Estudar Flutter",
          subtitle: "Através da Udemy",
          image: AssetImage("images/56725656.jpg"),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Através da Udemy",
          image: AssetImage("images/56725656.jpg"),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Através da Udemy",
          image: AssetImage("images/56725656.jpg"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Através da Udemy",
          image: AssetImage("images/56725656.jpg"),
          margin: listSlidePosition.value * 0,
        )
      ],
    );
  }
}
