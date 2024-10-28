List<Map<String, dynamic>> hotelList = [
  {
    'image': 'one.png',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25
  },
  {
    'image': 'two.png',
    'place': 'Global Will',
    'destination': 'London',
    'price': 40
  },
  {
    'image': 'three.png',
    'place': 'Tallest Building',
    'destination': 'Dubai',
    'price': 68
  },
];
//Map and List for Ticket

List<Map<String, dynamic>> ticketList = [
{
'from': {
'code':"NYC",
'name':"New-York"
},
'to': {
'code':"LDN",
'name':"London"
},
'flying_time': '8H 30M',
'date': "1 MAY",
'departure_time':"08:00 AM",
"number":23
},
{
'from': {
'code':"DK",
'name':"Dhaka"
},
'to': {
'code':"SH",
'name':"Shanghai"
},
'flying_time': '4H 20M',
'date': "10 MAY",
'departure_time':"09:00 AM",
"number":45
},
];
class AppRoutes{

  static const homePage = "/";

  static const allTickets = "/all_tickets";

  static const ticketScreen = "/ticket_screen";

  static const allHotels = "/all_hotels";

  static const hotelDetail = "/hotel_detail";

}