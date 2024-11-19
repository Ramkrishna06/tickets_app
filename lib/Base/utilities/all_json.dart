List<Map<String, dynamic>> hotelList = [
  {
    'image': 'hotel_room.png',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25,
    'detail':
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis  a, venenatis vitaeus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc',
    'images': [
      'city_view_1.png',
      'hotel_room_view_2.png',
      'pool_view_3.png',
    ]
  },
  {
    'image': "hotel_room_view_1.png",
    'place': 'Global Will',
    'destination': 'London',
    'price': 40,
    'detail':
        'hfsoijf  oijsf jojfsfsfosjoi oijfosofsofjsof soifjsoijfosoifsjoifjoijfoisjos ofi soifsoijfoisjfosfuihsaifsi fs ffs f soifhsiufhsuihfshfoishfhsoifsif sif f usoisofiso soisoifsoifsofos o os sojfsoi jfos ois os  s s   s os so s oif jsoi fso fo soi  so s foi foas foisajoi sfoi isaoif soif soi fosi foias  fois foia sfoisoif so fsoi fos fois foii sjof s fsjo fsfos fs ',
    'images': [
      'hotel_room_view_1.png',
      'city_view_2.png',
      'pool_view_2.png',
    ]
  },
  {
    'image': 'hotel_room_view_3.png',
    'place': 'Tallest Building',
    'destination': 'Dubai',
    'price': 68,
    'detail':
        "'hfsoijf  oijsf jojfsfsfosjoi oijfosofsofjsof soifjsoijfosoifsjoifjoijfoisjos ofi soifsoijfoisjfosfuihsaifsi fs ffs f soifhsiufhsuihfshfoishfhsoifsif sif f usoisofiso soisoifsoifsofos o os sojfsoi jfos ois os  s s   s os so s oif jsoi fso fo soi  so s foi foas foisajoi sfoi isaoif soif soi fosi foias  fois foia sfoisoif so fsoi fos fois foii sjof s fsjo fsfos fs ',",
    'images': [
      'pool_view_1.png',
      'hotel_room_view_3.png',
      'city_view_3.png',
    ]
  },
];
//Map and List for Ticket

List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': "NYC", 'name': "New-York"},
    'to': {'code': "LDN", 'name': "London"},
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time': "08:00 AM",
    "number": 23
  },
  {
    'from': {'code': "DK", 'name': "Dhaka"},
    'to': {'code': "SH", 'name': "Shanghai"},
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time': "09:00 AM",
    "number": 45
  },
  {
    'from': {'code': "HOG", 'name': "Hogwarts"},
    'to': {'code': "NYC", 'name': "New-york"},
    'flying_time': '6H 20M',
    'date': "23 APR",
    'departure_time': "09:00 PM",
    "number": 49
  },
];

class AppRoutes {
  static const homePage = "/";

  static const allTickets = "/all_tickets";

  static const ticketScreen = "/ticket_screen";

  static const allHotels = "/all_hotels";

  static const hotelDetail = "/hotel_detail";

  static const hotelmoredetail = "/hotel_moredetail";
}
