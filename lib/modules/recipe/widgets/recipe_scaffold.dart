import 'package:flutter/material.dart';



class DetailScaffold extends StatefulWidget  {

  final ScrollController controller;
  final List<Widget> slivers;
  final double expandedHeight;
  final bool hasPinnedAppBar;

  DetailScaffold({
    Key? key,
    required expandedHeight,
    required slivers,
    controller,
    hasPinnedAppBar,
  }) : this.controller = controller,
       this.slivers = slivers,
       this.expandedHeight = expandedHeight,
       this.hasPinnedAppBar = hasPinnedAppBar,
       super(key: key);

  @override
  _DetailScaffoldState createState() => _DetailScaffoldState();
}

class _DetailScaffoldState extends State<DetailScaffold> {
  ScrollController ctrl = new ScrollController();

  @override
  void initState() {
    super.initState();
    ctrl = widget.controller;
    ctrl.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      ctrl.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CustomScrollView(
          controller: ctrl,
          slivers: widget.slivers,
        ),
        _buildEdge(context),
      ],
    );
  }

  _buildEdge(BuildContext context) {
    var edgeHeight = 48.0;
    var paddingTop = MediaQuery.of(context).padding.top;

    var defaultOffset = (paddingTop + widget.expandedHeight) - edgeHeight;

    var top = defaultOffset;
    var edgeSize = edgeHeight;

    if (widget.controller.hasClients) {
      double offset = widget.controller.offset;
      top -= offset > 0 ? offset : 0;

      if (widget.hasPinnedAppBar) {
        // Hide edge to prevent overlapping the toolbar during scroll.
        var breakpoint = widget.expandedHeight - kToolbarHeight - edgeHeight;

        if (offset >= breakpoint) {
          edgeSize = edgeHeight - (offset - breakpoint);
          if (edgeSize < 0) {
            edgeSize = 0;
          }
          print("asdasd");
          top += (edgeHeight - edgeSize);
        }
      }
    }

    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: Container(
        height: edgeSize,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(18),
          ),
        ),
      ),
    );
  }
}