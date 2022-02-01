import 'package:http/http.dart' as http;

class BookingService{

  Future<Map<String, dynamic>> getUpcomingBooking()async{

   return await Future.delayed(const Duration(seconds: 2), (){

     return {
       'message':'list accepted booking',
       'success':true,
       'status':200,
       'data':[]
     };

   });

  }

 Future<Map<String, dynamic>> getAcceptedBooking()async{

    return await Future.delayed(const Duration(seconds: 2), (){

      return {
        'message':'list upcoming booking',
        'success':true,
        'status':200,
        'data':[
          {
            'name':'DR. Eva Reid',
            'avatar':'assets/images/image.jpg',
            'professionalTitle':'Professional Title',
            'patients':'120+',
            'experience':'5 years',
            'profileView':'200+',
            'certificates':['assets/images/cert.jpg','assets/images/cert.jpg','assets/images/cert.jpg'],
            'companies':['Romania Company','Romania Co'],
            'date':'November 17, 12:30 PM',
            'isConfirmed': true,
          },
          {
            'name':'DR. Eva',
            'avatar':'assets/images/image.jpg',
            'professionalTitle':'Professional Title',
            'patients':'120+',
            'experience':'5 years',
            'profileView':'200+',
            'certificates':['assets/images/cert.jpg','assets/images/cert.jpg','assets/images/cert.jpg'],
            'companies':['Romania Company','Romania Co'],
            'date':'November 17, 12:30 PM',
            'isConfirmed': false,
          },
          {
            'name':'DR. Eva Reid',
            'avatar':'assets/images/image.jpg',
            'professionalTitle':'Professional Title',
            'patients':'120+',
            'experience':'5 years',
            'profileView':'200+',
            'certificates':['assets/images/cert.jpg','assets/images/cert.jpg','assets/images/cert.jpg'],
            'companies':['Romania Company','Romania Co'],
            'date':'November 17, 12:30 PM',
            'isConfirmed': true,
          },
        ]
      };

    });

  }

}