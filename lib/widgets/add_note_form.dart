import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formKey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(

              onSaved: (value){
                title=value;
              },
              hint: "title"),
          SizedBox(height: 16),
          CustomTextField(
              onSaved: (value){
                subTitle=value;
              },
              maxLines: 5, hint: "content"),
          SizedBox(height: 32),
          CustomButton(onTap: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else{
              autovalidateMode=AutovalidateMode.always;
              setState(() {

              });
            }

          },),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
