import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rearticles/app/modules/Login/views/login_view.dart';
import 'package:rearticles/app/source/constants/constant.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img_2), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: 190,
                decoration: BoxDecoration(
                    color: Color.fromARGB(146, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15),
                    border:
                        Border.all(color: Color.fromARGB(255, 255, 255, 255))),
                child: Image(
                  image: AssetImage(logo_2),
                  height: 180,
                  width: 190,
                ),
              ),
              Container(
                height: 420,
                width: 390,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.250),
                        blurRadius: 5,
                        offset: Offset(0, 4))
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 36,
                        color: defaultColor,
                        fontFamily: "Robotos",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(226, 155, 155, 155),
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Text(
                      'Start your new journey.\nUse these awesome forms to login or create new account in your project for free.',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: defaultPadding),
                    TextField(
                      controller: controller.emailC,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: defaultColor),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: defaultColor)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: defaultColor)),
                        prefixIcon: Icon(Icons.person_pin, color: defaultColor),
                      ),
                    ),
                    SizedBox(height: defaultPadding),
                    Obx(
                      () => TextField(
                        controller: controller.passwordC,
                        obscureText: controller.isHidden.value,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(color: defaultColor),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: defaultColor)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: defaultColor)),
                          prefixIcon: Icon(Icons.lock, color: defaultColor),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.isHidden.value =
                                  !controller.isHidden.value;
                            },
                            icon: Icon(
                                color: controller.isHidden.value
                                    ? defaultColor
                                    : Colors.grey,
                                controller.isHidden.value
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Obx(
                      () => ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginView()));
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(defaultColor)),
                        child: Container(
                          width: double.infinity,
                          height: 45,
                          decoration: BoxDecoration(
                            color: defaultColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                              child: controller.isSignIng
                                  ? CircularProgressIndicator(
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                        ),
                      ),
                    ),
                    SizedBox(height: defaultPadding),
                    GestureDetector(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginView()));
                        },
                        child: Text(
                          "Already have an account?\nLogin Here!",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: defaultColor, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
