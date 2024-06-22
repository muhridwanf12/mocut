part of 'widgets.dart';

class Header1 extends StatelessWidget {
  final String text;

  const Header1({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.black
      ));
  }
}
