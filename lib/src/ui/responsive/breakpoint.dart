import 'package:flutter/material.dart';

class Breakpoint {
  Breakpoints? breakpoint(BuildContext context) {
    final windowSize = MediaQuery.of(context).size.width;
    if (windowSize < 600) return Breakpoints.xsmall;
    if (windowSize >= 600 && windowSize < 1024) return Breakpoints.small;
    if (windowSize >= 1024 && windowSize < 1440) return Breakpoints.medium;
    if (windowSize >= 1440 && windowSize < 1920) return Breakpoints.large;
    if (windowSize >= 1920) return Breakpoints.xlarge;
    return Breakpoints.medium;
  }
}

enum Breakpoints { xsmall, small, medium, large, xlarge }
