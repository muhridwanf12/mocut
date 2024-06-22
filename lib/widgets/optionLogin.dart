part of 'widgets.dart';

class OptionLogin extends StatelessWidget {
  final double thickness;
  final Color color;
  final double fontSize;
  final Color textColor;

  const OptionLogin({
    super.key,
    this.thickness = 1.0,
    this.color = Colors.black,
    this.fontSize = 15.0,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: thickness,
                  color: color,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'or',
                  style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: thickness,
                  color: color,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15,),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WelcomePage()),
                  );
                },
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black), 
                    borderRadius: BorderRadius.circular(8), 
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset('lib/assets/google.jpeg', fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(width: 30,),
      
      
              GestureDetector(
                onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WelcomePage()),
                  );
                },
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black), 
                    borderRadius: BorderRadius.circular(8), 
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset('lib/assets/google.jpeg', fit: BoxFit.cover),
                  ),
                  
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}



