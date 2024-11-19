import "package:flutter/material.dart";

class HelpWidget extends StatelessWidget {
  const HelpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      title: Text("طريقة المسابقة",
          style: Theme.of(context).textTheme.displayLarge),
      content: Directionality(
        textDirection: TextDirection.rtl,
        child: Text(
          """حاول الإجابة على أكبر عدد من الأسئلة بشكل تسلسلى لتحقيق أكبر عدد من النقاط
    \n الإجابة الخاطئة على أى  سؤال تعيدك إلى نقطة البداية.
    \n كلما أجبت على السؤال في بداية الوقت كلما حصلت على نقاط أكثر.
    \n نتمنى لك وقتا سعيدا ومعلومات مفيدة.""",
          // textAlign: TextAlign.end,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                height: 2,
              ),
        ),
      ),
    );
  }
}
