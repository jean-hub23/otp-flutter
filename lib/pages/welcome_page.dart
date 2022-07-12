import 'package:otp/widgets/widget.dart';
import 'package:provider/provider.dart';
import 'package:otp/providers/input_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final inputProvider = Provider.of<InputProvider>(context);

    return Scaffold(

      backgroundColor: Theme.of(context).primaryColorDark,

      body: SafeArea(

        child: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 20),

          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

            child: Column(


              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Container(
                    width: double.infinity,
                    height: size.height*0.4,
                    child: SvgPicture.asset('assets/factory.svg', fit: BoxFit.fill,),
                  ),
                ),

                const Text('Codigo del Servicio', style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
                SizedBox(height: size.height*0.03),
                const Text('ingrese el codigo del servicio que esta asociado este dispositivo', style: TextStyle( fontWeight: FontWeight.w300 )),
                SizedBox(height: size.height*0.03),

                Form(
                  key: inputProvider.globalKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,

                  child: Container(

                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    
                    child: TextFormField(

                      validator: (value) {
                        return (value!.length<4)
                        ? 'Ingrese un numero de 4 digitos'
                        : null;
                      },
                      onChanged: (value) =>inputProvider.codigoServicio = value,
                      maxLength: 4,
                      keyboardType: TextInputType.number,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                      ),

                      decoration: InputDecoration(

                        isDense: true,

                        // contentPadding: const EdgeInsets.symmetric( horizontal: 20,vertical:15),

                        counterText: '',

                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xff26262C),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xff6C63FF),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        errorBorder: OutlineInputBorder(

                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),

                          borderRadius: BorderRadius.circular(10),

                        ),

                      ),

                    ),

                  ),

                ),

                SizedBox(height: size.height*0.05),


                ButtonWidget(
                  padding:const EdgeInsets.symmetric(horizontal:80, vertical:20),

                  onpressed:(inputProvider.isloading)
                    ?null
                    :()async{

                      //TODO: Login form

                      FocusScope.of(context).unfocus();

                      if( !inputProvider.isValid() ) return;

                      inputProvider.isloading = true;

                      await Future.delayed(const Duration(seconds: 2));
                      inputProvider.isloading = false;

                      Navigator.pushNamed(context, 'verification');

                    },

                  child:(inputProvider.isloading)
                    ?const Text('Espere...',style:  TextStyle(color: Colors.white))
                    
                    :const Text('Ingresar',style:  TextStyle(color: Colors.white))
                
                ),

              ],

            ),

          ),

        ),

      ),

    );

  }

}