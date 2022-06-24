import 'package:flutter/material.dart';
import 'package:saabui/textformfield/textformfield.dart';

class Form3 extends StatelessWidget {
  Form3({Key? key}) : super(key: key);

  final _UserController = TextEditingController();

  final _PassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                
                children: [
                  Spacer(),
                  Text(
                    "Find A Doctor ?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Doctor Login",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
              Center(
                child: CircleAvatar(
                  radius: 80,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hello Doctor Please Login if you alredy Register",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  children: [
                    Feild(
                      control: _UserController,
                      texthint: 'Usernamae',
                      type: TextInputType.name,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Feild(
                      control: _PassController,
                      texthint: 'Password',
                      type: TextInputType.visiblePassword,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
                Center(child: Row(
                children: [
                  Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Submit"))),
                ],
              ),),
              Spacer(),

              Row(
                children: [
                  Spacer(),
                  Text("Register",style: TextStyle(color: Colors.blue),),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
