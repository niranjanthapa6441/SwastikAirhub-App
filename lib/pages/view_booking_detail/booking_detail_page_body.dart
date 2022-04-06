import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swastik_air_hub/model/booking.dart';
import 'package:swastik_air_hub/utils/dimesions/dimesions.dart';
import 'package:swastik_air_hub/widgets/big_text.dart';

import '../../controller/booking_details_controller.dart';

class BookingDetailPageBody extends StatelessWidget {
  int pageId;
  BookingDetailPageBody({required this.pageId, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Booking booking = Get.find<CustomerBookingDetailController>()
        .customerBookingDetails[pageId];
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height30),
              width: Dimensions.width30 * 15,
              child: BigText(text: "Detail"),
            ),
            Container(
              height: Dimensions.height35 * 9.8,
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.height30,
                  top: Dimensions.height10),
              width: Dimensions.width30 * 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Color.fromARGB(220, 234, 235, 233),
              ),
              child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height30,
                    top: Dimensions.height30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Booking Date: " + booking.bookingDate.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Booking time: " + booking.bookingTime.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Number Of Traveller " +
                          booking.numberOfTraveller.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Departure Date:  " +
                          booking.flightTicket!.detail!.departureDate
                              .toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Departure Time: " +
                          booking.flightTicket!.detail!.departureTime
                              .toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Status: " + booking.status.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Total Ticket Price : " +
                          booking.totalTicketPrice.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              width: Dimensions.width30 * 15,
              child: BigText(text: "TIcket"),
            ),
            Container(
              height: Dimensions.height35 * 9.8,
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.height30,
                  top: Dimensions.height10),
              width: Dimensions.width30 * 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Color.fromARGB(220, 234, 235, 233),
              ),
              child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height30,
                    top: Dimensions.height30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Booking Id: " + booking.id.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Booking Date: " + booking.bookingDate.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Booking time: " + booking.bookingTime.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Number Of Traveller " +
                          booking.numberOfTraveller.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Departure Date:  " +
                          booking.flightTicket!.detail!.departureDate
                              .toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Departure Time: " +
                          booking.flightTicket!.detail!.departureTime
                              .toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Status: " + booking.status.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: Dimensions.height35 * 9.8,
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.height30,
                  top: Dimensions.height10),
              width: Dimensions.width30 * 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Color.fromARGB(220, 234, 235, 233),
              ),
              child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height30,
                    top: Dimensions.height30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Booking Id: " + booking.id.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Booking Date: " + booking.bookingDate.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Booking time: " + booking.bookingTime.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Number Of Traveller " +
                          booking.numberOfTraveller.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Departure Date:  " +
                          booking.flightTicket!.detail!.departureDate
                              .toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Departure Time: " +
                          booking.flightTicket!.detail!.departureTime
                              .toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Status: " + booking.status.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: Dimensions.height35 * 9.8,
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.height30,
                  top: Dimensions.height10),
              width: Dimensions.width30 * 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Color.fromARGB(220, 234, 235, 233),
              ),
              child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height30,
                    top: Dimensions.height30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Booking Id: " + booking.id.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Booking Date: " + booking.bookingDate.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Booking time: " + booking.bookingTime.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Number Of Traveller " +
                          booking.numberOfTraveller.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Departure Date:  " +
                          booking.flightTicket!.detail!.departureDate
                              .toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Departure Time: " +
                          booking.flightTicket!.detail!.departureTime
                              .toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Status: " + booking.status.toString(),
                      color: Color.fromARGB(169, 42, 42, 43),
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
