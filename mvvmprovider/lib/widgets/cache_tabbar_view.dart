/*
| ---------------------------------------------------------------------- 
| Add More Action Button / Menu
| ----------------------------------------------------------------------     
|
|
|
|
*/

import 'package:flutter/material.dart';

class CacheTabbarView extends StatefulWidget {
  final int count;
  final int selectedIndex;
  final IndexedWidgetBuilder tabBuilder;

  /*
  *   Constructor
  *
  *   @param    count               int                                 Total number of tab views
  *   @param    selectedIndex       int                                 Selected index
  *   @param    tabBuilder          IndexedWidgetBuilder                Callback function to return selected view
  */
  CacheTabbarView({
    @required this.tabBuilder,
    @required this.count,
    @required this.selectedIndex,
  }) : assert(tabBuilder != null && selectedIndex != null);

  @override
  State<StatefulWidget> createState() => _CacheTabbarState();
}

class _CacheTabbarState extends State<CacheTabbarView> {
  List<bool> shouldBuildTab;
  List<FocusScopeNode> tabFocusNodes;

  @override
  void initState() {
    shouldBuildTab = List<bool>.filled(widget.count, false);
    tabFocusNodes = List<FocusScopeNode>.filled(widget.count, FocusScopeNode());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: List<Widget>.generate(widget.count, (int index) {
        final bool active = index == widget.selectedIndex;
        shouldBuildTab[index] = active || shouldBuildTab[index];

        return Offstage(
          offstage: !active,
          child: TickerMode(
            enabled: active,
            child: FocusScope(
              node: tabFocusNodes[index],
              child: Builder(builder: (BuildContext context) {
                return shouldBuildTab[index]
                    ? widget.tabBuilder(context, index)
                    : Container();
              }),
            ),
          ),
        );
      }),
    );
  }
}
