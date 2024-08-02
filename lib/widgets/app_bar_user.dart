import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class TopWidget extends StatefulWidget {
  const TopWidget({super.key});

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton.icon(
          onPressed: () => GoRouter.of(context).push("/settings"),
          label: Text(
            'user',
            style: GoogleFonts.raleway(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),
          icon: const ImageIcon(AssetImage('assets/icons/user.png'),
              color: Color.fromRGBO(21, 21, 34, 100)),
        ),
        Row(
          children: [
            IconButton(
              icon: const ImageIcon(
                color: Color.fromRGBO(21, 21, 34, 100),
                AssetImage(
                  'assets/icons/notification.png',
                ),
              ),
              onPressed: () => GoRouter.of(context).push("/notifications"),
            ), // кнопка в виде иконки уведомления
          ],
        ),
      ],
    );
  }
}
