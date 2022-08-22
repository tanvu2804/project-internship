import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_colors.dart';
import 'package:project_internship/constants/app_string.dart';
import 'package:project_internship/modules/frequently_questions/widgets/listquestion.dart';
import 'package:project_internship/modules/frequently_questions/widgets/searchbar.dart';

class FrequentlyQuestions extends StatelessWidget {
  FrequentlyQuestions({Key? key}) : super(key: key);

  final List questionList = List.generate(20, (index) {
    return {
      "id": index,
      "title": "This is the title $index",
    };
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.pinkPurple,
                  )),
              shadowColor: Colors.transparent,
              backgroundColor: AppColors.white,
              title: Text(
                FrequentlyQuestion.FrequentlyTitle,
                style: TextStyle(
                  color: AppColors.pinkPurple,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: questionList.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return SearchWidget(index: index);
                  } else {
                    return ListQuestionWidget(index: index);
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
