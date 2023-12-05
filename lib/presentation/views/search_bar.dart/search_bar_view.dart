import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nomad_friendly_app/presentation/theme/app_colors.dart';

class SearchBarView extends StatelessWidget {
  const SearchBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteApp ,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 27),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.backgroundApp,
            border:  OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.backgroundApp ) ,
              borderRadius: BorderRadius.circular(30)
            ),
          hintText: 'search place',
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: AppColors.blueApp ,
          suffixIcon: const Icon(Icons.close),
          suffixIconColor: AppColors.blueApp
          ),
        ),
      ),
    );
  }
}