import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_colors.dart';

class CategoryAdapter extends StatefulWidget {
  CategoryAdapter(
      {Key? key,
        required this.icon,
        required this.textTitle,
        this.textDescription,
        this.function,
        this.iconWidth,
        this.iconHeight})
      : super(key: key);
  final String textTitle;
  final String? textDescription;
  final String icon;
  final function;
  final double? iconWidth;
  final double? iconHeight;

  @override
  State<CategoryAdapter> createState() => _CategoryAdapterState();
}

class _CategoryAdapterState extends State<CategoryAdapter> {
  String aaaa="";
  @override
  Widget build(BuildContext context) {
    final Size txtSize = _textSize(
        widget.textTitle, TextStyle(color: Color(0xff4EB1DD), fontSize: 24));
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xff707070).withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3)),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xffA3489B)),
      child: InkWell(
        onTap: widget.function,
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.textDescription!.length == 0 &&
                  widget.textDescription == ""
                  ? Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(widget.textTitle,
                            // maxLines: 1,
                            style:
                            TextStyle(color: Colors.white, fontSize: 24)),
                      ),
                      Container(
                        width: txtSize.width,
                        child: Divider(
                          thickness: 1,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ))
                  : Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(widget.textTitle,
                            // maxLines: 1,
                            style:
                            TextStyle(color: Colors.white, fontSize: 24)),
                      ),
                      Container(
                        width: double.infinity/3,
                        child: Divider(
                          thickness: 1,
                          color: AppColors.lightWhite,
                        ),
                      ),
                      Text(
                        widget.textDescription ?? "",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  )),
              Image.asset(
                widget.icon,
                width: widget.iconWidth ?? 70,
                height: widget.iconHeight ?? 70,
                color: AppColors.lightWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Size _textSize(String text, TextStyle style) {
  final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr)
    ..layout(minWidth: 0, maxWidth: double.infinity);
  return textPainter.size;
}
