import 'package:flutter/material.dart';
import 'package:saabui/textformfield/textformfield.dart';

class form2 extends StatelessWidget {
   form2({ Key? key }) : super(key: key);

   final _namecontroller = TextEditingController();

  final _GenderController = TextEditingController();

  final _QualificationController = TextEditingController();

  final _RegisterController = TextEditingController();

    final _PlaceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Register A Doctor",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                child: Column(
                  children: [
                    Feild(
                        control: _namecontroller,
                        texthint: "Full Name",
                        type: TextInputType.name),
                    SizedBox(
                      height: 20,
                    ),
                    Feild(
                      control: _GenderController,
                      texthint: 'Gender',
                      type: TextInputType.name,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Feild(
                      control: _QualificationController,
                      texthint: 'Qualification',
                      type: TextInputType.name,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Feild(
                      control: _RegisterController,
                      texthint: 'Registered Practioner No',
                      type: TextInputType.name,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Feild(control: _PlaceController, texthint: "Place", type:TextInputType.name)
                  ],
                ),
                
              ),
             
              Spacer(),
              Center(child: Row(
                children: [
                  Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Next"))),
                ],
              ))
            ],
          )),
        ),
      )),
    );
  }
}