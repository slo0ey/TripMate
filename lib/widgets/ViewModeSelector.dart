import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

typedef ViewModeUpdater = void Function(ViewMode);
typedef _OnPressed = void Function();

enum ViewMode { big, grid, medium, list }

class ViewModeSelector extends StatelessWidget {
  const ViewModeSelector(
      {super.key, required this.viewMode, required this.updateViewMode});

  final ViewMode viewMode;
  final ViewModeUpdater updateViewMode;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _ViewModeButton(
          onPressed: () => updateViewMode(ViewMode.big),
          iconName: 'big',
          focused: viewMode == ViewMode.big,
        ),
        _ViewModeButton(
          onPressed: () => updateViewMode(ViewMode.grid),
          iconName: 'grid',
          focused: viewMode == ViewMode.grid,
        ),
        _ViewModeButton(
          onPressed: () => updateViewMode(ViewMode.medium),
          iconName: 'medium',
          focused: viewMode == ViewMode.medium,
        ),
        _ViewModeButton(
          onPressed: () => updateViewMode(ViewMode.list),
          iconName: 'list',
          focused: viewMode == ViewMode.list,
        ),
      ],
    );
  }
}

class _ViewModeButton extends StatelessWidget {
  const _ViewModeButton(
      {super.key,
      required this.onPressed,
      required this.iconName,
      this.focused = false});

  static const Color _focusedColor = Color(0xffa0a0a0);
  static const Color _unfocusedColor = Color(0xffdfdfdf);

  final _OnPressed onPressed;
  final String iconName;
  final bool focused;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: IconButton(
        padding: const EdgeInsets.all(0),
        style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)))),
        onPressed: onPressed,
        icon: SvgPicture.asset(
          'assets/images/view_$iconName.svg',
          colorFilter: ColorFilter.mode(
              focused ? _focusedColor : _unfocusedColor, BlendMode.srcIn),
        ),
      ),
    );
  }
}
