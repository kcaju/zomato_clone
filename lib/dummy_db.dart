import 'package:zomato_clone/utils/constants/image_constants.dart';

class DummyDb {
  //deliveryscreen
  static const List<Map> items = [
    {
      "time": "25 mins . 1 km",
      "image": ImageConstants.HOTEL_1,
      "name": "Alakapuri",
      "rate": "4.2",
      "Place": "Kerala . South Indian . ₹150 for one"
    },
    {
      "time": "21 mins . 1 km",
      "image": ImageConstants.HOTEL_2,
      "name": "Salam Thattukada",
      "rate": "4.0",
      "Place": "Kerala . Chinese . ₹200 for one"
    },
    {
      "time": "28 mins . 4.5 km",
      "image": ImageConstants.HOTEL_3,
      "name": "Haji Ali",
      "rate": "4.1",
      "Place": "Beverages . Juices . ₹200 for one"
    },
    {
      "time": "19 mins . 1 km",
      "image": ImageConstants.HOTEL_4,
      "name": "Seetha Devi Parlour",
      "rate": "4.4",
      "Place": "Juices . Beverages . ₹150 for one"
    },
    {
      "time": "30 mins . 2.5 km",
      "image": ImageConstants.HOTEL_5,
      "name": "Chinese Wok",
      "rate": "3.8",
      "Place": "Chinese . Momos . ₹350 for one"
    },
    {
      "time": "32 mins . 1 km",
      "image": ImageConstants.HOTEL_6,
      "name": "Hotel Paradise",
      "rate": "3.8",
      "Place": "South Indian . Mandi . ₹150 for one"
    },
    {
      "time": "25 mins . 2 km",
      "image": ImageConstants.HOTEL_7,
      "name": "The Hearth Kitchen",
      "rate": "4.4",
      "Place": "Pizza . Desserts . ₹600 for one"
    },
    {
      "time": "28 mins . 3 km",
      "image": ImageConstants.HOTEL_8,
      "name": "Tamaki",
      "rate": "3.7",
      "Place": "Arabian . South Indian . ₹150 for one"
    },
    {
      "time": "29 mins . 2 km",
      "image": ImageConstants.HOTEL_9,
      "name": "Pizza Hut",
      "rate": "3.2",
      "Place": "Pizza . Fast Food . ₹300 for one"
    },
    {
      "time": "23 mins . 1.5 km",
      "image": ImageConstants.HOTEL_10,
      "name": "Juicy",
      "rate": "3.7",
      "Place": "Shake . Beverages . ₹150 for one"
    },
    {
      "time": "22 mins . 3.5 km",
      "image": ImageConstants.HOTEL_11,
      "name": "Falooda Nation",
      "rate": "3.9",
      "Place": "Pure Veg . Desserts . ₹200 for one"
    },
    {
      "time": "18 mins . 1 km",
      "image": ImageConstants.HOTEL_12,
      "name": "Bilal Cafe",
      "rate": "3.4",
      "Place": "Arabian . Biriyani . ₹200 for one"
    },
    {
      "time": "24 mins . 1.5 km",
      "image": ImageConstants.HOTEL_13,
      "name": "Cake Pots",
      "rate": "3.6",
      "Place": "Bakery . ₹200 for one"
    },
    {
      "time": "56 mins . 6 km",
      "image": ImageConstants.HOTEL_14,
      "name": "Lulu Hypermarket",
      "rate": "3.7",
      "Place": "Arabian . Biriyani . ₹200 for one"
    },
    {
      "time": "21 mins . 4.5 km",
      "image": ImageConstants.HOTEL_15,
      "name": "Scoops",
      "rate": "4.1",
      "Place": "Desserts . Ice Cream . ₹200 for one"
    },
  ];

  static const List<Map> orders = [
    {
      "name": "Alakapuri",
      "place": "Kerala . South Indian",
      "rating": "4.4",
      "time": "25 mins . 1 km",
      "rate": "11.4K ratings"
    },
    {
      "name": "Salam Thattukada",
      "place": "Kerala . Chinese",
      "rating": "4.0",
      "time": "21 mins . 1 km",
      "rate": "890 ratings"
    },
    {
      "name": "Haji Ali",
      "place": "Beverages . Juices",
      "rating": "4.1",
      "time": "28 mins . 4.5 km",
      "rate": "5K ratings"
    },
    {
      "name": "Seetha Devi Parlour",
      "place": "Juices . Beverages",
      "rating": "4.4",
      "time": "19 mins . 1 km",
      "rate": "10.9K ratings"
    },
    {
      "name": "Chinese Wok",
      "place": "Chinese . Momos",
      "rating": "3.8",
      "time": "30 mins . 2.5 km",
      "rate": "835 ratings"
    },
    {
      "name": "Hotel Paradise",
      "place": "South Indian . Mandi",
      "rating": "3.8",
      "time": "32 mins . 1 km",
      "rate": "21.4K ratings"
    },
    {
      "name": "The Heart Kitchen",
      "place": "Pizza . Desserts",
      "rating": "4.4",
      "time": "25 mins . 2 km",
      "rate": "262 ratings"
    },
    {
      "name": "Tamaki",
      "place": "Arabian . South Indian",
      "rating": "3.7",
      "time": "28 mins . 3 km",
      "rate": "84 ratings"
    },
    {
      "name": "Pizza Hut",
      "place": "Pizza . Fast Food",
      "rating": "3.2",
      "time": "29 mins . 2 km",
      "rate": "2.1K ratings"
    },
    {
      "name": "Juicy",
      "place": "Shake . Beverages",
      "rating": "3.7",
      "time": "23 mins . 1.5 km",
      "rate": "524 ratings"
    },
    {
      "name": "Falooda Nation",
      "place": "Pure Veg . Desserts",
      "rating": "3.9",
      "time": "22 mins . 3.5 km",
      "rate": "330 ratings"
    },
    {
      "name": "Bilal Cafe",
      "place": "Arabian . Biriyani",
      "rating": "3.4",
      "time": "18 mins . 1 km",
      "rate": "1.8K ratings"
    },
    {
      "name": "Cake Pots",
      "place": "Bakery",
      "rating": "3.6",
      "time": "24 mins . 1.5 km",
      "rate": "120 ratings"
    },
    {
      "name": "Lulu Hypermarket",
      "place": "Arabian . Biriyani",
      "rating": "3.7",
      "time": "56 mins . 6 km",
      "rate": "39.7K ratings"
    },
    {
      "name": "Scoops",
      "place": "Desserts . Ice Cream",
      "rating": "4.1",
      "time": "21 mins . 4.5 km",
      "rate": "1.2K ratings"
    },
  ];
  static const List<Map> explore = [
    {
      "url": "assets/images/gift.png",
      "text1": "Offers",
      "text2": "Flat Discounts"
    },
    {
      "url": "assets/images/star.png",
      "text1": "Awards '24",
      "text2": "Vote now"
    },
    {
      "url": "assets/images/top10.png",
      "text1": "Top 10",
      "text2": "Local Restaurants"
    },
    {
      "url": "assets/images/gourmet.png",
      "text1": "Gourmet",
      "text2": "Selections"
    },
    {
      "url": "assets/images/train.png",
      "text1": "Food on train",
      "text2": "Delivery at seat"
    },
  ];
  static const List<Map> dishes = [
    {"pic": ImageConstants.ITEM_1, "name": "Biriyani"},
    {"pic": ImageConstants.ITEM_2, "name": "Pizza"},
    {"pic": ImageConstants.ITEM_3, "name": "Ice-Cream"},
    {"pic": ImageConstants.ITEM_4, "name": "Burger"},
    {"pic": ImageConstants.ITEM_5, "name": "Chicken"},
    {"pic": ImageConstants.ITEM_6, "name": "Shawarma"},
    {"pic": ImageConstants.ITEM_7, "name": "Fried-Rice"},
    {"pic": ImageConstants.ITEM_8, "name": "Dosa"},
    {"pic": ImageConstants.ITEM_9, "name": "Paratha"},
    {"pic": ImageConstants.ITEM_10, "name": "Rolls"},
    {"pic": ImageConstants.ITEM_11, "name": "South Indian"},
    {"pic": ImageConstants.ITEM_12, "name": "North Indian"},
    {"pic": ImageConstants.ITEM_13, "name": "Sandwich"},
    {"pic": ImageConstants.ITEM_14, "name": "Momos"},
    {"pic": ImageConstants.ITEM_15, "name": "Milkshake"},
  ];
  static const List<Map> dishes_list = [
    {"pic": ImageConstants.ITEM_1, "name": "Biriyani"},
    {"pic": ImageConstants.ITEM_2, "name": "Pizza"},
    {"pic": ImageConstants.ITEM_3, "name": "Ice-Cream"},
    {"pic": ImageConstants.ITEM_4, "name": "Burger"},
    {"pic": ImageConstants.ITEM_5, "name": "Chicken"},
    {"pic": ImageConstants.ITEM_6, "name": "Shawarma"},
    {"pic": ImageConstants.ITEM_7, "name": "Fried-Rice"},
    {"pic": ImageConstants.ITEM_8, "name": "Dosa"},
    {"pic": ImageConstants.ITEM_9, "name": "Paratha"},
    {"pic": ImageConstants.ITEM_10, "name": "Rolls"},
    {"pic": ImageConstants.ITEM_11, "name": "South Indian"},
    {"pic": ImageConstants.ITEM_12, "name": "North Indian"},
    {"pic": ImageConstants.ITEM_13, "name": "Sandwich"},
    {"pic": ImageConstants.ITEM_14, "name": "Momos"},
    {"pic": ImageConstants.ITEM_15, "name": "Milkshake"},
    {"pic": ImageConstants.ITEM_16, "name": "Fries"},
  ];
  //foodordering screen
  static const List<Map> dishcard = [
    {
      "title": "Alakapuri",
      "time": "19mins . 1km",
      "rate": "4.4",
      "name": "Chicken fried rice",
      "rating": "484 ratings",
      "url":
          "https://images.pexels.com/photos/1410235/pexels-photo-1410235.jpeg?auto=compress&cs=tinysrgb&w=600",
    },
    {
      "title": "Bilal Cafe",
      "time": "16mins . 1km",
      "rate": "3.4",
      "name": "Beef fry",
      "rating": "725 ratings",
      "url":
          "https://images.pexels.com/photos/18273986/pexels-photo-18273986/free-photo-of-delicious-beef-with-mushrooms.jpeg?auto=compress&cs=tinysrgb&w=600",
    },
  ];
  static const List<Map> expansiondetails = [
    {
      "name": "Chicken fried rice",
      "rating": "484 ratings",
      "url":
          "https://images.pexels.com/photos/1410235/pexels-photo-1410235.jpeg?auto=compress&cs=tinysrgb&w=600",
      "details":
          "| 250gms |A delicious dish of cooked rice that has been stir-fried in a wok  with veggies and chicken."
    },
    {
      "name": "Beef fry",
      "rating": "725 ratings",
      "url":
          "https://images.pexels.com/photos/18273986/pexels-photo-18273986/free-photo-of-delicious-beef-with-mushrooms.jpeg?auto=compress&cs=tinysrgb&w=600",
      "details":
          "A spicy and slow cooked Kerala style beef fry, made with whole spices,shallots "
    },
  ];

  static const List<String> menu = [
    "Cool Drinks",
    "Main Course",
    "South Indian",
    "Chinese",
    "Try these similar restaurants"
  ];

  static const List<String> info = [
    "Menu items,nutritional information and prices are set directly by the restaruant.",
    "Nutritional information values displayed are indicative,per serving and may vary depending on the ingredients, portion size and customizations. ",
    "An average active adult requires 2,000 kcal energy per day,however, calorie needs may vary.",
  ];
  //bookatable
  static const List<String> name = [
    "Paragon",
    "Roastown",
    "Punjab Grill",
    "Marriott Hotel",
    "Ciao Cochin"
  ];
  static const List<Map> time = [
    {"time": "7:00 AM", "offer": "1 offer"},
    {"time": "7:30 AM", "offer": "1 offer"},
    {"time": "8:00 AM", "offer": "1 offer"},
    {"time": "8:30 AM", "offer": "1 offer"},
    {"time": "9:00 AM", "offer": "1 offer"},
    {"time": "9:30 AM", "offer": "1 offer"},
  ];
  static const List<Map> lunch = [
    {"time": "12:00 PM", "offer": "2 offers"},
    {"time": "12:30 PM", "offer": "2 offers"},
    {"time": "1:00 PM", "offer": "2 offers"},
    {"time": "1:30 PM", "offer": "2 offers"},
    {"time": "2:00 PM", "offer": "2 offers"},
    {"time": "2:30 PM", "offer": "2 offers"},
  ];
  static const List<Map> dinner = [
    {"time": "6:00 PM", "offer": "2 offers"},
    {"time": "6:30 PM", "offer": "2 offers"},
    {"time": "7:00 PM", "offer": "2 offers"},
  ];
  //diningscreen
  static const List<Map> restaurants = [
    {
      "url": "assets/images/paragon.jpg",
      "name": "Paragon",
      "rate": "4.4",
      "place": "Edappally,Kochi",
      "km": "4.5 km",
      "state": "Kerala . South Indian",
      "price": "₹900 for two",
      "menu": "",
      "p1": "",
      "p2": "",
      "p3": "",
      "p4": "",
      "p5": "",
      "p6": "",
      "dishes": ""
    },
    {
      "url": "assets/images/roasttown.jpeg",
      "name": "Roastown",
      "rate": "4.3",
      "place": "Edappally,Kochi",
      "km": "4.7 km",
      "state": "Asian . Italian",
      "price": "₹2600 for two",
      "menu": "",
      "p1": "",
      "p2": "",
      "p3": "",
      "p4": "",
      "p5": "",
      "p6": "",
      "dishes": ""
    },
    {
      "url": "assets/images/punjab.jpg",
      "name": "Punjab Grill",
      "rate": "4.3",
      "place": "Edappally,Kochi",
      "km": "5.1 km",
      "state": "North Indain . Kebab",
      "price": "₹2500 for two",
      "menu": "",
      "p1": "",
      "p2": "",
      "p3": "",
      "p4": "",
      "p5": "",
      "p6": "",
      "dishes": ""
    },
    {
      "url": "assets/images/marriot.jpg",
      "name": "Marriott Hotel",
      "rate": "4.5",
      "place": "Edappally,Kochi",
      "km": "5.3 km",
      "state": "South Indain . Asian",
      "price": "₹3000 for two",
      "menu": "",
      "p1": "",
      "p2": "",
      "p3": "",
      "p4": "",
      "p5": "",
      "p6": "",
      "dishes": ""
    },
    {
      "url": "assets/images/ciao.jpg",
      "name": "Ciao Cochin",
      "rate": "3.8",
      "place": "Vennala,Kochi",
      "km": "7.8 km",
      "state": "Cafe . Coffee",
      "price": "₹1500 for two",
      "menu": "",
      "p1": "",
      "p2": "",
      "p3": "",
      "p4": "",
      "p5": "",
      "p6": "",
      "dishes": ""
    },
  ];

  static const List<Map> hoteldetails = [
    {
      "url": "assets/images/paragon.jpg",
      "name": "Paragon",
      "rate": "4.4",
      "place": "34/744-A, Thoppil Building, VP Marakar Road, Edappally, Kochi",
      "km": "4.5 km",
      "state": "34/744-A, Thoppil Building, VP Marakar Road, Edappally, Kochi",
      "price": "₹900 for two",
      "menu": "assets/images/paragonmenu.jpg",
      "p1":
          "https://media.istockphoto.com/id/1716346259/photo/yellow-chicken-biriyani.jpg?b=1&s=612x612&w=0&k=20&c=12KAW0pT0EM22Dv0GPGHcPU-oXNKn7sQ48BwmYNbpaQ=",
      "p2":
          "https://images.pexels.com/photos/776538/pexels-photo-776538.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p3":
          "https://images.pexels.com/photos/6646373/pexels-photo-6646373.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p4":
          "https://images.pexels.com/photos/1628020/pexels-photo-1628020.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p5":
          "https://images.pexels.com/photos/2696064/pexels-photo-2696064.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p6":
          "https://images.pexels.com/photos/6072039/pexels-photo-6072039.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "dishes":
          "Kerala, South Indian, Continental, North Indian, Seafood, Chinese, Desserts,Beverages",
    },
    {
      "url": "assets/images/roasttown.jpeg",
      "name": "Roastown",
      "rate": "4.3",
      "place": "37/3469-A1.A2,A3, Old Cheranallur Road,Edappally, Kochi",
      "km": "4.7 km",
      "state": "37/3469-A1.A2,A3, Old Cheranallur Road,Edappally, Kochi",
      "price": "₹2600 for two",
      "menu": "assets/images/roastmenu.jpg",
      "p1":
          "https://images.pexels.com/photos/914388/pexels-photo-914388.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p2":
          "https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p3":
          "https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p4":
          "https://images.pexels.com/photos/750843/pexels-photo-750843.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p5":
          "https://images.pexels.com/photos/6267/menu-restaurant-vintage-table.jpg?auto=compress&cs=tinysrgb&w=400",
      "p6":
          "https://images.pexels.com/photos/64208/pexels-photo-64208.jpeg?auto=compress&cs=tinysrgb&w=400",
      "dishes": "Asian, Italian, Pasta, Pizza, Beverages"
    },
    {
      "url": "assets/images/punjab.jpg",
      "name": "Punjab Grill",
      "rate": "4.3",
      "state":
          "Shop 9, 2nd Floor, Lulu Mall, National Highway 47, Netaji Nagar, Edappally,Kochi",
      "place":
          "Shop 9, 2nd Floor, Lulu Mall, National Highway 47, Netaji Nagar, Edappally,Kochi",
      "km": "5.1 km",
      "price": "₹2500 for two",
      "menu": "assets/images/punjabmenu.jpg",
      "p1":
          "https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p2":
          "https://images.pexels.com/photos/1126728/pexels-photo-1126728.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p3":
          "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p4":
          "https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p5":
          "https://images.pexels.com/photos/2097090/pexels-photo-2097090.jpeg?auto=compress&cs=tinysrgb&w=400",
      "p6":
          "https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?auto=compress&cs=tinysrgb&w=600",
      "dishes": "Noth Indian, Kebab, Biriyani, Mughlai"
    },
    {
      "url": "assets/images/marriot.jpg",
      "name": "Marriott Hotel",
      "rate": "4.5",
      "state":
          "34/1111, Lulu International Shopping Mall, NH 47, Edappally, Kochi",
      "place":
          "34/1111, Lulu International Shopping Mall, NH 47, Edappally, Kochi",
      "km": "5.3 km",
      "price": "₹3000 for two",
      "menu": "assets/images/marriotmenu.jpg",
      "p1":
          "https://images.pexels.com/photos/718742/pexels-photo-718742.jpeg?auto=compress&cs=tinysrgb&w=600",
      "p2":
          "https://images.pexels.com/photos/698907/pexels-photo-698907.jpeg?auto=compress&cs=tinysrgb&w=600",
      "p3":
          "https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?auto=compress&cs=tinysrgb&w=600",
      "p4":
          "https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&w=600",
      "p5":
          "https://images.pexels.com/photos/1482803/pexels-photo-1482803.jpeg?auto=compress&cs=tinysrgb&w=600",
      "p6":
          "https://images.pexels.com/photos/2983101/pexels-photo-2983101.jpeg?auto=compress&cs=tinysrgb&w=600",
      "dishes":
          "South Indian,Asian, North Indian, Continental, Fast Food, Beverages"
    },
    {
      "url": "assets/images/ciao.jpg",
      "name": "Ciao Cochin",
      "rate": "3.8",
      "place": "Chakkaraparambu, Kaniyapilly Road, Vennala, Kochi",
      "km": "7.8 km",
      "state": "Chakkaraparambu, Kaniyapilly Road, Vennala, Kochi",
      "price": "₹1500 for two",
      "menu": "assets/images/ciaomenu.jpg",
      "p1":
          "https://images.pexels.com/photos/691114/pexels-photo-691114.jpeg?auto=compress&cs=tinysrgb&w=600",
      "p2":
          "https://images.pexels.com/photos/1055058/pexels-photo-1055058.jpeg?auto=compress&cs=tinysrgb&w=600",
      "p3":
          "https://images.pexels.com/photos/5865152/pexels-photo-5865152.jpeg?auto=compress&cs=tinysrgb&w=600",
      "p4":
          "https://images.pexels.com/photos/2565222/pexels-photo-2565222.jpeg?auto=compress&cs=tinysrgb&w=600",
      "p5":
          "https://images.pexels.com/photos/2161643/pexels-photo-2161643.jpeg?auto=compress&cs=tinysrgb&w=600",
      "p6":
          "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=600",
      "dishes": "Cafe, Coffee, Italian, Pizza, Fast Food, Desserts, Beverages"
    },
  ];

  static const List<String> carddetails = [
    ImageConstants.ART,
    ImageConstants.CAFES,
    ImageConstants.SOUTH,
    ImageConstants.VISIT,
    ImageConstants.NORTH,
    ImageConstants.SEA,
  ];

  static const List<String> whitebg = [
    ImageConstants.WHITE,
    ImageConstants.WHITE,
    ImageConstants.WHITE,
    ImageConstants.WHITE,
    ImageConstants.WHITE,
    ImageConstants.WHITE,
  ];
  static const List<String> offer = [
    "Extra ₹500 OFF",
    "20% OFF upto ₹700",
    "10% OFF upto ₹500",
    "15% OFF upto ₹500",
    "Extra ₹350 OFF",
    "10% OFF upto ₹500"
  ];
  static const List<String> captions = [
    "8 Places for Art Lovers",
    "14 Great Cafes",
    "12 Places for South Indian Treats",
    "5 Must-Visit Places",
    "12 Places for North Indian Treats",
    "5 Superb Seafood Places"
  ];

  static const List<Map> banks = [
    {
      "url": ImageConstants.BANK1,
      "card": "CREDIT CARD",
    },
    {
      "url": ImageConstants.BANK2,
      "card": "CREDIT CARD",
    },
    {
      "url": ImageConstants.BANK3,
      "card": "CREDIT CARD",
    },
    {
      "url": ImageConstants.BANK4,
      "card": "CREDIT CARD",
    },
    {
      "url": ImageConstants.BANK5,
      "card": "NET BANKING",
    },
    {
      "url": ImageConstants.BANK6,
      "card": "CREDIT CARD",
    },
  ];
  //searchcountryscreen
  static const List<Map> country = [
    {"url": ImageConstants.CANADA, "name": "Canada", "code": "+1"},
    {"url": ImageConstants.FRANCE, "name": "France", "code": "+33"},
    {"url": ImageConstants.INDIA, "name": "India", "code": "+91"},
    {"url": ImageConstants.OMAN, "name": "Oman", "code": "+968"},
    {"url": ImageConstants.QATAR, "name": "Qatar", "code": "+974"},
    {"url": ImageConstants.UK, "name": "United Kingdom", "code": "+44"}
  ];
}
