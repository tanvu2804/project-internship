import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_colors.dart';

import '../../../constants/app_string.dart';

class ListQuestionWidget extends StatelessWidget {
  const ListQuestionWidget({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColors.lightGrey,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        leading: const CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/icons/question-circle.png'),
          ),
        ),
        title: Text(
          FrequentlyQuestion.QUESTION,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
