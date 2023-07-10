import 'package:door_hub/app/model/chat_model.dart';
import 'package:door_hub/app/modules/support/components/chat_bubble.dart';
import 'package:door_hub/app/modules/support/components/message_field.dart';
import 'package:door_hub/app/modules/widgets/containers/primary_container.dart';
import 'package:door_hub/app/modules/widgets/texts/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveChatView extends StatefulWidget {
  const LiveChatView({super.key});

  @override
  State<LiveChatView> createState() => _LiveChatViewState();
}

class _LiveChatViewState extends State<LiveChatView> {
  FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    if (_focusNode.hasFocus != _isFocused) {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: PrimaryContainer(
            child: Column(
          children: [
            Row(
              children: [
                CustomHeaderText(text: 'Live Chat', fontSize: 18.sp),
                const Spacer(),
                const Icon(Icons.more_horiz)
              ],
            ),
            SizedBox(height: 16.h),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ChatBubble(
                    chat: dummyChats[index],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 10.h),
                itemCount: dummyChats.length),
            const Spacer(),
          ],
        )),
      ),
      bottomSheet: PrimaryContainer(
        child: MessageField(
          sendCallback: () {},
          attachmentCallback: () {},
          emojiCallback: () {},
          controller: TextEditingController(),
          focusNode: _focusNode,
          isFocused: _isFocused,
        ),
      ),
    );
  }
}
