import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/model/category_model.dart';
import 'package:door_hub/app/modules/categories/components/sub_category_grid_card.dart';
import 'package:door_hub/app/modules/categories/components/sub_category_list_card.dart';
import 'package:door_hub/app/modules/home/components/search_field.dart';
import 'package:door_hub/app/modules/widgets/buttons/custom_icon_button.dart';
import 'package:door_hub/app/modules/widgets/containers/primary_container.dart';
import 'package:door_hub/app/modules/widgets/texts/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryView extends StatefulWidget {
  final CategoryModel category;
  const SubCategoryView({required this.category, super.key});

  @override
  State<SubCategoryView> createState() => _SubCategoryViewState();
}

class _SubCategoryViewState extends State<SubCategoryView> {
  final _searchController = TextEditingController();
  bool _isGridView = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            PrimaryContainer(
                child: SearchField(
                    controller: _searchController, onSearchPress: () {})),
            SizedBox(height: 16.h),
            Row(
              children: [
                CustomHeaderText(text: widget.category.name, fontSize: 18.sp),
                const Spacer(),
                CustomIconButton(
                    onTap: () {
                      setState(() {
                        _isGridView = false;
                      });
                    },
                    isEnabled: _isGridView == false,
                    icon: AppAssets.kList),
                SizedBox(width: 8.w),
                CustomIconButton(
                    onTap: () {
                      setState(() {
                        _isGridView = true;
                      });
                    },
                    isEnabled: _isGridView == true,
                    icon: AppAssets.kGrid),
              ],
            ),
            SizedBox(height: 16.h),
            PrimaryContainer(
              child: AnimatedCrossFade(
                  firstChild: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const SubCategoryListCard();
                      },
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: 5),
                  secondChild: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 148.w / 237.h,
                        mainAxisSpacing: 10.w,
                        crossAxisSpacing: 10.w),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return const SubCategoryGridCard();
                    },
                  ),
                  crossFadeState: _isGridView
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 500)),
            )
          ],
        ),
      ),
    );
  }
}
