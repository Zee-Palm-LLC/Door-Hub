import 'package:door_hub/app/model/chat_model.dart';
import 'package:door_hub/app/modules/support/components/chat_bubble.dart';
import 'package:door_hub/app/modules/support/components/message_field.dart';
import 'package:door_hub/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveChatView extends StatefulWidget {
  const LiveChatView({Key? key});

  @override
  State<LiveChatView> createState() => _LiveChatViewState();
}

class _LiveChatViewState extends State<LiveChatView> {
  TextEditingController _textEditingController = TextEditingController();
  bool _isExpanded = false;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          children: [
            Row(
              children: [
                CustomHeaderText(text: 'Live Chat', fontSize: 18.sp),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ChatBubble(
                    chat: dummyChats[index],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemCount: dummyChats.length,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: PrimaryContainer(
        radius: 0,
        child: MessageField(
          sendCallback: () {},
          attachmentCallback: () {},
          emojiCallback: () {},
          controller: _textEditingController,
          isExpanded: _isExpanded,
          onChanged: (value) {
            setState(() {
              _isExpanded = value.length > 13;
            });
          },
        ),
      ),
    );
  }
}
