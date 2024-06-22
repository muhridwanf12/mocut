part of 'widgets.dart';

class TextWithLink extends StatelessWidget {

  final String? textNonLink1;
  final String textLink1;
  final String? textNonLink2;
  final String? textLink2;
  final String? textNonLink3;
  final String? textLink3;
  final Color color;
  final Widget destinationPage1;
  final Widget? destinationPage2;
  final Widget? destinationPage3;

  const TextWithLink({
    super.key,
    this.textNonLink1,
    this.textNonLink2,
    this.textNonLink3,
    required this.textLink1,
    this.textLink2,
    this.textLink3,
    required this.color,
    required this.destinationPage1,
    this.destinationPage2,
    this.destinationPage3,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: RichText(
        softWrap: true,
        overflow: TextOverflow.visible,
        text: TextSpan(
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 12
          ),
          children: <TextSpan>[
            TextSpan(text: textNonLink1),
            TextSpan(
              text: textLink1,
              style: GoogleFonts.poppins(
                color: color
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => destinationPage1),
                  );
                }
            ),
            TextSpan(text: textNonLink2),
            TextSpan(
              text: textLink2,
              style: GoogleFonts.poppins(
                color: color
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => destinationPage2!),
                  );
                }
            ),
            TextSpan(text: textNonLink3),
            TextSpan(
              text: textLink3,
              style: GoogleFonts.poppins(
                color: color
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => destinationPage3!),
                  );
                }
            ),
            
          ],
        ),
      ),
    );
  }
}