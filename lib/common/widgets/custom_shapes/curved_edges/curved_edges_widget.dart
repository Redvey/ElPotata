import 'package:epotata/common/widgets/custom_shapes/curved_edges/curved_edgets.dart';
import 'package:flutter/material.dart';



class CurvedEdgesWidget extends StatelessWidget {
  const CurvedEdgesWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ECurvedEdges(),
      child: child,
    );
  }
}