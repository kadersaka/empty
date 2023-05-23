import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum MenuEntry {
  /*about('About'),
  showMessage(
      'Show Message', SingleActivator(LogicalKeyboardKey.keyS, control: true)),
  hideMessage(
      'Hide Message', SingleActivator(LogicalKeyboardKey.keyS, control: true)),
  colorMenu('Color Menu'),
  colorRed('Red Background',
      SingleActivator(LogicalKeyboardKey.keyR, control: true)),
  colorGreen('Green Background',
      SingleActivator(LogicalKeyboardKey.keyG, control: true)),
  colorBlue('Blue Background',
      SingleActivator(LogicalKeyboardKey.keyB, control: true));

  const MenuEntry(this.label, [this.shortcut]);
  final String label;
  final MenuSerializableShortcut? shortcut;*/
  y
}

class MarketplaceCategoriesContainer extends StatefulWidget {
  const MarketplaceCategoriesContainer({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MarketplaceCategoriesContainerState();
  }
}

class _MarketplaceCategoriesContainerState
    extends State<MarketplaceCategoriesContainer> {
  MenuEntry? _lastSelection;
  final FocusNode _buttonFocusNode = FocusNode(debugLabel: 'Menu Button');
  ShortcutRegistryEntry? _shortcutsEntry;

  Color get backgroundColor => _backgroundColor;
  Color _backgroundColor = Color(0xff5c71a8);
  set backgroundColor(Color value) {
    if (_backgroundColor != value) {
      setState(() {
        _backgroundColor = value;
      });
    }
  }

  bool get showingMessage => _showingMessage;
  bool _showingMessage = false;
  bool _isChecked = true;
  set showingMessage(bool value) {
    if (_showingMessage != value) {
      setState(() {
        _showingMessage = value;
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Dispose of any previously registered shortcuts, since they are about to
    // be replaced.
    _shortcutsEntry?.dispose();
    // Collect the shortcuts from the different menu selections so that they can
    // be registered to apply to the entire app. Menus don't register their
    // shortcuts, they only display the shortcut hint text.
    //final Map<ShortcutActivator, Intent> shortcuts =
    //    <ShortcutActivator, Intent>{
    //  for (final MenuEntry item in MenuEntry.values)
    //    if (item.shortcut != null)
    //      item.shortcut!: VoidCallbackIntent(() => _activate(item)),
    //};
    // Register the shortcuts with the ShortcutRegistry so that they are
    // available to the entire application.
    //_shortcutsEntry = ShortcutRegistry.of(context).addAll(shortcuts);
  }

  @override
  void dispose() {
    _shortcutsEntry?.dispose();
    _buttonFocusNode.dispose();
    super.dispose();
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Color(0xff5c71a8);
    }
    return Color(0xff5c71a8);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuAnchor(
          childFocusNode: _buttonFocusNode,
          menuChildren: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "FILTER",
                        style:
                            TextStyle(color: Color(0xff737A82), fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Closest to you",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Most Recent",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Most Favorited",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(
                    height: 20,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "PRICE",
                        style:
                            TextStyle(color: Color(0xff737A82), fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Sort Ascending",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Sort Descending",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
          builder:
              (BuildContext context, MenuController controller, Widget? child) {
            return TextButton(
              focusNode: _buttonFocusNode,
              onPressed: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
              child: Icon(
                Icons.graphic_eq,
                color: Color(0xff5c71a8),
              ),
            );
          },
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
            child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...["Closest to you", "Services", "Events", "Trades"]
                  .map((e) => MarketplaceCategory(
                        text: e,
                        isSelected: e == "Closest to you",
                      ))
                  .toList()
            ],
          ),
        ))
      ],
    );
  }

  void _activate(MenuEntry selection) {
    setState(() {
      _lastSelection = selection;
    });
  }
}

class MarketplaceCategory extends StatelessWidget {
  final bool isSelected;
  final String text;
  const MarketplaceCategory(
      {super.key, this.isSelected = true, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        decoration: BoxDecoration(
            color: !isSelected ? Colors.white : Color(0xff5c71a8),
            border: Border.all(color: Color(0xff5c71a8)),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 6.0, // soften the shadow
                      spreadRadius: 2.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5  horizontally
                        5.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ]
                : []),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: isSelected ? Colors.white : Color(0xff5c71a8)),
        ),
      ),
    ); /*Row(
      children: [
        Icon(
          Icons.graphic_eq,
          color: Color(0xff5c71a8),
        ),
        SizedBox(width: 10.0,)
      ],
    )*/
    ;
  }
}
