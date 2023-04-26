import 'package:flutter/material.dart';

import '../enum/Box_shape.dart';

class BoxStateToIcon extends StatelessWidget {
  final boxState;
  const BoxStateToIcon({super.key, required this.boxState});

  @override
  Widget build(BuildContext context) {
    return boxState == BoxState.circle
        ? const Icon(
            Icons.lens_outlined,
            color: Colors.white,
            size: 90.0,
          )
        : boxState == BoxState.close
            ? const Icon(
                Icons.close,
                color: Colors.white,
                size: 100.0,
              )
            : Container();
  }
}
