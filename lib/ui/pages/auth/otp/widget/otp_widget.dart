import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/auth/otp/bloc/otp_bloc.dart';

class OtpWidget extends StatefulWidget {
  const OtpWidget({super.key});

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  // 6 text editing controllers that associate with the 6 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Implement 6 input fields
        OtpInput(controller: _fieldOne, autoFocus: true, index: 0), // auto focus
        OtpInput(controller: _fieldTwo, autoFocus: false, index: 1),
        OtpInput(controller: _fieldThree, autoFocus: false, index: 2),
        OtpInput(controller: _fieldFour, autoFocus: false, index: 3),
        OtpInput(controller: _fieldFive, autoFocus: false, index: 4),
        OtpInput(controller: _fieldSix, autoFocus: false, index: 5),
      ],
    );
  }
}

class OtpInput extends StatelessWidget {
  const OtpInput({
    required this.controller,
    required this.autoFocus,
    required this.index,
    super.key,
  });

  final TextEditingController controller;
  final bool autoFocus;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpBloc, OtpState>(
      builder: (context, state) {
        var error = false;
        if (state.status == OtpStatus.failure) {
          error = true;
        }
        return Container(
          height: 58,
          width: 46,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.white100,
          ),
          child: TextField(
            autofocus: autoFocus,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            controller: controller,
            maxLength: 1,
            style: error
                ? AppTypography.b22d.copyWith(color: AppColors.error100, height: 35 / 22)
                : AppTypography.b22d.copyWith(height: 35 / 22),
            cursorColor: AppColors.primary100,
            decoration: InputDecoration(
              border: InputBorder.none,
              counterText: '',
              hintStyle: AppTypography.b22d,
            ),
            onChanged: (value) {
              context.read<OtpBloc>().add(OtpEvent.otpChanged(value, index));
              if (value.length == 1) {
                if (index != 5) {
                  FocusScope.of(context).nextFocus();
                } else {
                  FocusManager.instance.primaryFocus?.unfocus();
                  context.read<OtpBloc>().add(const OtpEvent.continued());
                }
              }
            },
          ),
        );
      },
    );
  }
}
