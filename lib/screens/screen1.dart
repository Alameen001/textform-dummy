import 'package:flutter/material.dart';
import 'package:saabui/textformfield/textformfield.dart';

class frorm1 extends StatelessWidget {
  frorm1({Key? key}) : super(key: key);

  final _namecontroller = TextEditingController();

  final _passwordController = TextEditingController();

  final _phoneController = TextEditingController();

  final _classcontroller = TextEditingController();

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
                "Hello,Name",
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
                        texthint: "Email",
                        type: TextInputType.emailAddress),
                    SizedBox(
                      height: 20,
                    ),
                    Feild(
                      control: _phoneController,
                      texthint: 'Phone No',
                      type: TextInputType.phone,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Feild(
                      control: _passwordController,
                      texthint: 'Password',
                      type: TextInputType.visiblePassword,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Feild(
                      control: _passwordController,
                      texthint: 'Confirm Password',
                      type: TextInputType.visiblePassword,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("upload photo :",style: TextStyle(fontSize: 18,),),

                  ElevatedButton(onPressed: (){}, child: Text("Upload"))
                ],
              ),
              Spacer(),
              Center(child: Row(
                children: [
                  Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Submit"))),
                ],
              ))
            ],
          )),
        ),
      )),
    );
  }
}
