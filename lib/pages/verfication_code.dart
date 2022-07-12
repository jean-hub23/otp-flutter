import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp/helpers/input_decoration.dart';


class VerificationCodePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height*0.03),
                const Text('Codigo de verificación', style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
                SizedBox(height: size.height*0.03),
                const Text('Te hemos enviado un codigo de verificación al', style: TextStyle(fontSize: 15, color: Colors.grey)),
                SizedBox(height: size.height*0.03),

                Row(

                  children: [
                    const Text('+51 9****8611', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(width: size.width*0.03),
                    const Tooltip(
                      message: 'Si desea cambiar el numero o el correo asociado al servicio comuniquese con soporte SOLMAR',
                      
                      verticalOffset: 10,
                      
                      child: Icon(Icons.info_outline_rounded, color: Colors.grey, ) ,
                    ),

                  ],

                ),
                
                SizedBox(height: size.height*0.03),

                Form(
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                      SizedBox(

                        height: 68,
                        width: 46,
                        
                        child: TextFormField(

                          onChanged: (value){
                            if(value.length ==1){
                              FocusScope.of(context).nextFocus();


                            }
                            if(value.length == 0){
                              FocusScope.of(context).previousFocus();


                            }

                          },


                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,

                          style: Theme.of(context).textTheme.headline6,
                          decoration: inputdecoration(),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],

                        ),

                      ),

                      SizedBox(

                        height: 68,
                        width: 46,
                        
                        child: TextFormField(
                          onChanged: (value){
                            if(value.length ==1){
                              FocusScope.of(context).nextFocus();


                            }
                            if(value.length == 0){
                              FocusScope.of(context).previousFocus();


                            }

                          },



                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,

                          style: Theme.of(context).textTheme.headline6,
                          decoration: inputdecoration(),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],

                        ),

                      ),
                      SizedBox(

                        height: 68,
                        width: 46,
                        
                        child: TextFormField(

                          onChanged: (value){
                            if(value.length ==1){
                              FocusScope.of(context).nextFocus();


                            }

                            if(value.length == 0){
                              FocusScope.of(context).previousFocus();


                            }

                          },

                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,

                          style: Theme.of(context).textTheme.headline6,
                          decoration: inputdecoration(),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],

                        ),

                      ),

                      SizedBox(

                        height: 68,
                        width: 46,
                        
                        child: TextFormField(

                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();


                            }
                            if(value.length == 0){
                              FocusScope.of(context).previousFocus();


                            }


                          },

                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,

                          style: Theme.of(context).textTheme.headline6,
                          decoration: inputdecoration(),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],

                        ),

                      ),




                    ],

                  )
                )

              ],
            ),
          ),
        )

      ),

    );
  }
}