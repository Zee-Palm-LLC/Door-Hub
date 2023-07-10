import 'package:door_hub/app/data/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomRatingField extends StatefulWidget {
  final int maxRating;
  final double initialRating;
  final Function(double) onChanged;

  const CustomRatingField({
    Key? key,
    this.maxRating = 5,
    this.initialRating = 0,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomRatingFieldState createState() => _CustomRatingFieldState();
}

class _CustomRatingFieldState extends State<CustomRatingField> {
  double _currentRating = 0;
  int _pressedIndex = -1;
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
  }

  void _handleTap(int index) {
    if (_isAnimating) return;

    double newRating = index + 1.toDouble();
    setState(() {
      _currentRating = newRating;
    });
    widget.onChanged(newRating);

    setState(() {
      _pressedIndex = index;
      _isAnimating = true;
    });

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _pressedIndex = -1;
        _isAnimating = false;
      });
    });
  }

  Widget _buildStar(int index) {
    Color starIconColor =
        index < _currentRating ? AppColors.kPrimary : AppColors.kHint;

    double starSize = _pressedIndex == index ? 40 : 35;

    return GestureDetector(
      onTap: () => _handleTap(index),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
          curve: Curves.bounceOut,
          duration: const Duration(milliseconds: 200),
          width: 35,
          height: 35,
          child: Icon(
            Icons.star_rounded,
            size: starSize,
            color: starIconColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.maxRating,
        (index) => _buildStar(index),
      ),
    );
  }
}
