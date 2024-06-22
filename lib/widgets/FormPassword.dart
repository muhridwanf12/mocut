part of 'widgets.dart';

class FormPassword extends StatefulWidget {
  final String label;
  final TextEditingController formcontroller;

  const FormPassword({
    Key? key,
    required this.label,
    required this.formcontroller,
  }) : super(key: key);

  @override
  _FormPasswordState createState() => _FormPasswordState();
}

class _FormPasswordState extends State<FormPassword> {
  bool obscureText = true;

  void togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.formcontroller,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: Text(
          widget.label,
          style: GoogleFonts.poppins()
          ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        suffixIcon: IconButton(
          padding: const EdgeInsets.only(right: 10),
          icon: Icon(
            obscureText ? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ),
          onPressed: togglePasswordVisibility,
        ),
      ),
      onChanged: (value) {
      },
    );
  }
}
