import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nomad_friendly_app/presentation/views/search_bar.dart/search_bar_view.dart';

class SearchBarProvider extends StatelessWidget {
  const SearchBarProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchBarView();
  }
}