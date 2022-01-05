import 'package:flutter/material.dart';
import 'package:newsapp/themes/themes.dart' show myTheme;

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _BaseLogo(
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: Row(
            children: const [
              _OneLogo(),
              _TwoLogo(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TwoLogo extends StatelessWidget {
  const _TwoLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        'API',
        style: TextStyle(
          color: myTheme.colorScheme.secondary,
          fontSize: 40,
        ),
      ),
    );
  }
}

class _OneLogo extends StatelessWidget {
  const _OneLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myTheme.colorScheme.secondary,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: const Text(
        'News',
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
        ),
      ),
    );
  }
}

class _BaseLogo extends StatelessWidget {
  final Widget child;
  const _BaseLogo({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 40,
      ),
      child: child,
    );
  }
}
