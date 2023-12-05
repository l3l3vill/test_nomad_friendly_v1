import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nomad_friendly_app/presentation/views/search_bar.dart/search_bar_provider.dart';
import 'package:nomad_friendly_app/presentation/views/search_bar.dart/search_bar_view.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBarProvider();
  }
}