import 'package:flutter/cupertino.dart';

class PageScaffold extends StatelessWidget {
  const PageScaffold({Key? key, required this.title, required this.body, this.backgroundColor}) : super(key: key);

  final String title;
  final Widget body;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: backgroundColor,
      navigationBar: CupertinoNavigationBar(middle: Text(title)),
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: SafeArea(
                child: body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
