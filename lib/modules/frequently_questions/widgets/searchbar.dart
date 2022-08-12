import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_images.dart';

import '../../../constants/app_string.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Material(
        elevation: 10,
        shadowColor: Colors.black87,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image(
                image: AssetImage(
                  AppImages.icSearch,
                ),
                fit: BoxFit.fitHeight,
                height: 5,
              ),
            ),
            border: InputBorder.none,
            hintText: ResourcesString.SEARCH_BAR,
            hintStyle: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
