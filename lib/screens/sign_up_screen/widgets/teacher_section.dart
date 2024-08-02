import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizlet_clone_app/provider/sign_up_provider.dart';
import 'package:quizlet_clone_app/shared/e_text.dart';

class TeacherSection extends ConsumerStatefulWidget {
  const TeacherSection({
    super.key,
    required this.data,
    required this.eLogic,
  });

  final SignUpController data, eLogic;

  @override
  ConsumerState<TeacherSection> createState() => _TeacherSectionState();
}

class _TeacherSectionState extends ConsumerState<TeacherSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        ETextSec3(
            text: "Are you a teacher".toUpperCase()),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: 15,
                child: Checkbox(
                  value: widget.data.aTeacher,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(10),
                  ),
                  onChanged: (h) {
                    setState(() {
                      widget.eLogic.teacherCheck(h!);
                    });
                  },
                ),
              ),
              const SizedBox(width: 12),
              const ETextSec2(text: "Yes"),
              const SizedBox(width: 24),
              SizedBox(
                width: 10,
                child: Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(10),
                  ),
                  value: !widget.data.aTeacher!,
                  onChanged: (h) {
                    setState(() {
                      widget.eLogic.teacherCheck(h!);
                    });
                  },
                ),
              ),
              const SizedBox(width: 12),
              const ETextSec2(text: "No"),
            ],
          ),
        ),
      ],
    );
  }
}
