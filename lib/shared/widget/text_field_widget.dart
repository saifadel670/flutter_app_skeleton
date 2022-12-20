import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../resources/app_color.dart';
import '../../resources/app_size.dart';
import '../theme_controller/theme_controller.dart';
import 'text_widget.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget(
      {Key? key,
      required this.controller,
      this.labelText,
      this.hintText,
      this.onTap,
      this.obscure = false,
      this.readOnly = false,
      this.required = false,
      this.textInputType,
      this.textCapitalization,
      this.textAlign = TextAlign.left,
      this.prefixIcon,
      this.suffixIcon,
      this.suffixColor,
      this.prefixColor,
      this.maxLine,
      this.minLine,
      this.suffixOnTap,
      this.prefixOnTap,
      this.onChanged,
      this.onEditingComplete,
      this.contentPadding,
      this.focusNode})
      : super(key: key);

  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final TextInputType? textInputType;
  final TextCapitalization? textCapitalization;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? suffixColor;
  final Color? prefixColor;
  final TextAlign? textAlign;
  final bool obscure;
  final bool required;
  final bool readOnly;
  final int? maxLine;
  final int? minLine;
  final Function()? onTap;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final Function()? suffixOnTap;
  final Function()? prefixOnTap;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GetBuilder<ThemeController>(
        builder: (controller) => TextFormField(
              validator: (val) =>
                  !widget.required || val != null && val.isNotEmpty
                      ? null
                      : "${widget.labelText} can't be empty",
              controller: widget.controller,
              onTap: widget.onTap,
              focusNode: widget.focusNode,
              onChanged: (val) {
                if (widget.onChanged != null) {
                  widget.onChanged!(val);
                }
              },
              onEditingComplete: widget.onEditingComplete,
              readOnly: widget.readOnly,
              obscureText: widget.obscure ? _obscure : false,
              keyboardType: widget.textInputType ?? TextInputType.text,
              textCapitalization:
                  widget.textCapitalization ?? TextCapitalization.none,
              maxLines: widget.maxLine ?? 1,
              minLines: widget.minLine ?? 1,
              textAlign: widget.textAlign!,
              style: TextStyle(
                  color: controller.titleTextColor(),
                  fontWeight: FontWeight.w500,
                  fontSize: SizeRatio.title),
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: controller.boarderColor())),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: controller.boarderColor())),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: controller.boarderColor())),
                  isDense: true,
                  // contentPadding: widget.contentPadding ??
                  //      EdgeInsets.symmetric(
                  //         horizontal: 0.0, //SizeRatio.fifteenPx,
                  //         vertical: SizeRatio.twelvePx),

                  // labelText: widget.labelText,
                  label: Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        WidgetSpan(
                          child: TitleText(
                              text: widget.labelText ?? '',
                              textColor: AppColor.secondaryColor),
                        ),
                        WidgetSpan(
                          child: TitleText(
                              text: widget.required ? ' *' : '',
                              textColor: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  hintText: widget.hintText,
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelStyle: TextStyle(
                      color: controller.textFieldHintColor(),
                      fontWeight: FontWeight.w500,
                      fontSize: SizeRatio.title),
                  hintStyle: TextStyle(
                      color: controller.textFieldHintColor(),
                      fontWeight: FontWeight.w500,
                      fontSize: SizeRatio.label),
                  prefixIcon: widget.prefixIcon != null
                      ? InkWell(
                          onTap: widget.prefixOnTap,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8, left: 10),
                            child: Icon(widget.prefixIcon,
                                size: SizeRatio.largeTitle,
                                color: widget.prefixColor ??
                                    AppColor.primaryColor),
                          ),
                        )
                      : null,
                  suffixIconConstraints: BoxConstraints.loose(size),
                  prefixIconConstraints: BoxConstraints.loose(size),
                  suffixIcon: widget.obscure
                      ? InkWell(
                          onTap: () => setState(() => _obscure = !_obscure),
                          // child: Padding(
                          //   padding: const EdgeInsets.only(
                          //       right: 3, top: SizeRatio.fifteenPx),
                          //   child: Icon(
                          //       _obscure
                          //           ? CupertinoIcons.eye_slash
                          //           : CupertinoIcons.eye,
                          //       size: SizeRatio.largeTitle,
                          //       color:
                          //           widget.suffixColor ?? Colors.grey.shade600),
                          // ),
                        )
                      : null),
            ));
  }
}
