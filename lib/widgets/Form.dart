part of 'widgets.dart';


class TextForm extends StatelessWidget {
  final String label;
  TextEditingController formcontroller = TextEditingController();

  TextForm({
    super.key,
    required this.label,
    required this.formcontroller
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: formcontroller,
      decoration: InputDecoration(
        label: Text(
          label,
          style: GoogleFonts.poppins()
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
      onChanged: (value) {
      },
    );
  }
}