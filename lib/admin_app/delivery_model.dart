import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Delivery{

  final String? product;
  final String? quantity;
  final String? status;
  final String? estimated;

  Delivery(this.product, this.quantity, this.status, this.estimated);

}

class SingleDeliveryCard extends StatefulWidget {
  
 final String? product;
  final String? quantity;
  final String? status;
  final String? estimated;

  const SingleDeliveryCard({Key? key, this.product, this.quantity, this.status, this.estimated}) : super(key: key);
  @override
  State<SingleDeliveryCard> createState() => _SingleDeliveryCardState();
}

class _SingleDeliveryCardState extends State<SingleDeliveryCard> {
  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Center(
        child: Container(
          width: size.width,
          height: size.width * 0.27,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(5),
             border: Border.all(
               color: Colors.black,
               width: 1,    
             )
           ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.width * 0.15 ,
                          width: size.width * 0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(size.width * 0.075),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/deals4.jpg'),
                            ),
                           ),
                        ),
                      ),
                      SizedBox(
                        width : size.width *0.5,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                   Row(
                                     children: [
                                       Text("Product : ",
                                        style : GoogleFonts.montserrat(
                                          fontWeight :FontWeight.bold,
                                          fontSize : 16
                                        ),
                                       ),
                                       Text(widget.product!,
                                         style : GoogleFonts.montserrat(
                                          
                                          fontSize : 16
                                        ),
                                       ),
                                     ],
                                   ),
                                  Row(
                                     children: [
                                       Text("Quantity : ",
                                        style : GoogleFonts.montserrat(
                                          fontWeight :FontWeight.bold,
                                          fontSize : 16
                                        ),
                                       ),
                                       Text(widget.quantity!,
                                         style : GoogleFonts.montserrat(
                                         
                                          fontSize : 16
                                        ),
                                       ),
                                     ],
                                   ),
                                       Row(
                                     children: [
                                       Text("Status : ",
                                       style : GoogleFonts.montserrat(
                                          fontWeight :FontWeight.bold,
                                          fontSize : 16
                                        ),
                                       ),
                                       Text(widget.status!,
                                        style : GoogleFonts.montserrat(
                                        
                                          fontSize : 16
                                        ),
                                       ),
                                     ],
                                   ),
                               Row(
                                     children: [
                                       Text("Estimated : ",
                                         style : GoogleFonts.montserrat(
                                          fontWeight :FontWeight.bold,
                                          fontSize : 16
                                        ),
                                       ),
                                       Text(widget.estimated!,
                                        style : GoogleFonts.montserrat(
                                         
                                          fontSize : 16
                                        ),
                                       
                                       ),
                                     ],
                                   )
                           


                           
                            
                            ],
                          ),
                        ),
                        )
                      ,SizedBox(
                        width: size.width * 0.13,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed:(){

                              }, 
                              icon: Icon(Icons.location_on,color : Colors.green.shade700),
                              ),
                            Text('Track',
                            style : GoogleFonts.montserrat(
                              fontSize : 12,
                              fontWeight: FontWeight.bold,
                            ),
                            ) 
                          ],
                        ),
                      ) ,
                       SizedBox(
                        width: size.width * 0.13,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed:(){

                              }, 
                              icon: Icon(Icons.cancel, color : Colors.red),
                              ),
                            Text('Cancel',
                            style : GoogleFonts.montserrat(
                              fontSize : 12,
                              fontWeight: FontWeight.bold,
                            ),
                            ) 
                          ],
                        ),
                      ) ,

                      
           
            ],),
          
        ),
      ),
    );
  }
}