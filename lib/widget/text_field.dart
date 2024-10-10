import 'package:flutter/material.dart';
import 'package:weekengo_front/theme/color_palette.dart';
import 'package:weekengo_front/theme/text_styles.dart';

// TODO: 오류 발생 후 typing시 focused로 state change하는 로직 구현?
class CustomTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final bool isEnabled;

  // final TextEditingController controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.label,
    this.hintText = "내용을 입력하세요",
    required this.isEnabled,
    // required this.controller,
    required this.validator,
  });

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();

  final TextEditingController _controller = TextEditingController();
  bool _hasError = false;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      _hasFocus = _focusNode.hasFocus ? true : false;
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyles.captionXSmall(
              color: widget.isEnabled
                  ? ColorPalette.grey700
                  : ColorPalette.grey300),
        ),
        const SizedBox(height: 8),
        TextFormField(
          validator: (value) {
            if (widget.validator != null) {
              final result = widget.validator!(value);
              setState(() {
                _hasError = result != null;
              });
              return result;
            }
            return null;
          },
          controller: _controller,
          focusNode: _focusNode,
          enabled: widget.isEnabled,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: !widget.isEnabled
                ? const TextStyle(color: ColorPalette.grey300)
                : _hasError
                    ? const TextStyle(color: ColorPalette.grey900)
                    : _hasFocus
                        ? const TextStyle(color: ColorPalette.grey900)
                        : const TextStyle(color: ColorPalette.grey500),
            filled: true,
            fillColor: !widget.isEnabled
                ? ColorPalette.grey10
                : _hasError
                    ? ColorPalette.redLight
                    : _hasFocus
                        ? ColorPalette.grey50
                        : ColorPalette.grey10,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorPalette.grey10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorPalette.grey50),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorPalette.grey50),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorPalette.grey100),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorPalette.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorPalette.red),
            ),
          ),
        ),
        // if (widget.errorText != null && _hasError)
        //   Padding(
        //     padding: const EdgeInsets.only(top: 8.0),
        //     child: Text(
        //       widget.errorText!,
        //       style: TextStyles.bodyXSmall(color: ColorPalette.red),
        //     ),
        //   ),
      ],
    );
  }
}
