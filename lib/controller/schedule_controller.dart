import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:zoualfkar/model/doctor.dart';
import 'package:zoualfkar/service/booking_service.dart';

class ScheduleController extends GetxController {
  int selectedTap=0;
  int state=1; // 1-> loading     2->data

  List<Doctor> acceptedList=[];
  List<Doctor> upcomingList=[];


  @override
  void onInit() async {
    super.onInit();
    getBooking();
  }

  getBooking()async{
   var acceptedMap=await BookingService().getAcceptedBooking();
   var upcomingMap=await BookingService().getUpcomingBooking();

   print(acceptedMap);
   print(upcomingMap);

   if(acceptedMap!=null && upcomingMap!=null){
     if(acceptedMap['success']==true && upcomingMap['success']==true ){
       state=2;
       for(var item in acceptedMap['data']){
         acceptedList.add(Doctor.fromJson(item));
       }

       for(var item in upcomingMap['data']){
         upcomingList.add(Doctor.fromJson(item));
       }
     }
     update();
   }

  }
}