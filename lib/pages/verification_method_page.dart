import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otp/providers/verifcation_provider.dart';
import 'package:otp/widgets/widget.dart';
import 'package:provider/provider.dart';


class VerificationMethodPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    final verificationProvider = Provider.of<VerificationProvider>(context);

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined),
          onPressed: ()=>Navigator.pop(context), 
        ),
      ),

      backgroundColor: Theme.of(context).primaryColorDark,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
      
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            
            child: Column(
              
              children: [
      
                Padding(
      
                  padding: const EdgeInsets.all(20.0),
      
                  child: Container(
                    width: double.infinity,
                    height: size.height*0.4,
                    child: SvgPicture.asset('assets/auth.svg', fit: BoxFit.cover,),
                  ),
      
                ),

                const Text('Escoge el metodo de verificacion', style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
                SizedBox(height: size.height*0.03),
                
                const Text('Nosotros te enviaremos un codigo de verifacion para ingresar', style: TextStyle( fontWeight: FontWeight.w300 )),
                SizedBox(height: size.height*0.03),

                GestureDetector(
                  onTap: () => verificationProvider.index = 1,
                  child: ContainerVerification(
                    leadingIcon: Icons.phone_android_outlined,
                    trainigIcon: Icons.check_circle,
                    text: '+51 9****8611',
                    selectedColor: (verificationProvider.index!=1)
                      ?const Color(0xff26262C)
                      :const Color(0xff6C63FF),
                  ),
                ),
                SizedBox(height: size.height*0.03),

                GestureDetector(
                  onTap: () => verificationProvider.index = 2,
                  
                  child: ContainerVerification(
                    leadingIcon: Icons.email,
                    trainigIcon: Icons.check_circle,
                    text: 'abu**********@gmail.com',
                    selectedColor: (verificationProvider.index!=2)
                      ?const Color(0xff26262C)
                      :const Color(0xff6C63FF),
                  ),
                ),
                SizedBox(height: size.height*0.03),

                ButtonWidget(
                  padding: const EdgeInsets.symmetric(horizontal:147, vertical:20),
                  onpressed:(verificationProvider.isloading)
                    ?null
                    :()async{

                      //TODO: Login form

                      FocusScope.of(context).unfocus();

                      print(verificationProvider.index);
                      print(verificationProvider.isloading);

                      verificationProvider.isloading = true;

                      await Future.delayed(const Duration(seconds: 2));

                      verificationProvider.isloading = false;

                      Navigator.pushNamed(context, 'verification-code');

                    },
                  child:(verificationProvider.isloading)
                    ?const Text('Espere...',style:  TextStyle(color: Colors.white))
                    :const Text('Ingresar',style:  TextStyle(color: Colors.white))

                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}