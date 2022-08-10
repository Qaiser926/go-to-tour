// import 'dart:convert';
// /// modules : [{"name":"hotels","status":true,"order":"2"},{"name":"flights","status":true,"order":"2"},{"name":"tours","status":true,"order":"3"},{"name":"visa","status":true,"order":"6"}]
// /// slider : [{"slide_id":"51","slide_position":"main","slide_title_text":null,"slide_desc_text":null,"slide_optional_text":null,"slide_link":null,"slide_link_name":null,"slide_image":"bg.jpg","slide_status":"Yes","slide_order":"1"}]
// /// payment_gateways : [{"title":"bank-transfer","c1":"Western Bank CBP","c2":"Gordan Road New Walton","c3":"Account No. 5689 5547 236","c4":"GBPXXX","c5":"IBAN GBPXXXIP0024456987","dev":false,"dev_endpoint":null,"pro_endpoint":null,"order":"1"},{"title":"pay-later","c1":null,"c2":null,"c3":null,"c4":null,"c5":null,"dev":false,"dev_endpoint":null,"pro_endpoint":null,"order":"2"},{"title":"wallet-balance","c1":null,"c2":null,"c3":null,"c4":null,"c5":null,"dev":true,"dev_endpoint":null,"pro_endpoint":null,"order":"3"},{"title":"paypal","c1":"Aex17xSniK7YjqZld6UDO2x_LzLlwJCa_kTLgzJ6OpjOG3S9F_Pesry7yiDP0v4CY_hobUnEPYWflmZv","c2":"ENKGbLZIPU9nPsriQj302YW18md2x2nTjG0uQIdQWV-AyXyTTbhWpUk5TWZ9kewIIMmlnFbeaE4blvk3","c3":"Use credentials below for test payment","c4":"Email : sb-itxir5994130@personal.example.com","c5":"Password : testpayment","dev":true,"dev_endpoint":"https://www.paypal.com/sdk/js","pro_endpoint":"https://www.paypal.com/sdk/js","order":"4"},{"title":"stripe","c1":"pk_test_jlmrEvyAoNM1SN8niMuVt86J","c2":"sk_test_ZrN9c95oOnUG4y3orb94WPFc","c3":"Use below card credentials to test payment","c4":"Card no : 4242424242424242","c5":"Any date and CVV code","dev":true,"dev_endpoint":"https://js.stripe.com/v3/","pro_endpoint":"https://js.stripe.com/v3/","order":"5"}]
// /// extras : [{"title":"newsletter","status":true},{"title":"locations","status":true},{"title":"blog","status":true},{"title":"offers","status":true}]
// /// currencies : [{"id":1,"name":"USD","symbol":"$","code":"USD","rate":"1","decimals":"2","symbol_placement":"before","primary_order":"1","defaultbool":true,"status":true},{"id":2,"name":"GBP","symbol":"£","code":"GBP","rate":"0.766115","decimals":"2","symbol_placement":"before","primary_order":"3","defaultbool":false,"status":true},{"id":3,"name":"SAR","symbol":null,"code":"SAR","rate":"3.7504","decimals":"2","symbol_placement":"before","primary_order":"0","defaultbool":false,"status":true},{"id":4,"name":"EUR","symbol":"€","code":"EUR","rate":"0.91925","decimals":"2","symbol_placement":"before","primary_order":"0","defaultbool":false,"status":true},{"id":5,"name":"PKR","symbol":null,"code":"PKR","rate":"189.384","decimals":"2","symbol_placement":"before","primary_order":"0","defaultbool":false,"status":true},{"id":6,"name":"JPY","symbol":null,"code":"JPY","rate":"124.066","decimals":"2","symbol_placement":"before","primary_order":"0","defaultbool":false,"status":true},{"id":7,"name":"INR","symbol":null,"code":"INR","rate":"75.8068","decimals":"2","symbol_placement":"before","primary_order":"0","defaultbool":false,"status":true},{"id":8,"name":"CNY","symbol":null,"code":"CNY","rate":"6.3622","decimals":"2","symbol_placement":"before","primary_order":"0","defaultbool":false,"status":true},{"id":9,"name":"TRY","symbol":null,"code":"TRY","rate":"14.749","decimals":"2","symbol_placement":"before","primary_order":"0","defaultbool":false,"status":true},{"id":10,"name":"RUB","symbol":null,"code":"RUB","rate":"79.251","decimals":"2","symbol_placement":"before","primary_order":"0","defaultbool":false,"status":true},{"id":11,"name":"IRR","symbol":null,"code":"IRR","rate":"42300","decimals":"2","symbol_placement":"before","primary_order":"0","defaultbool":false,"status":true}]
// /// languages : [{"id":1,"name":"Arabic","rtl":"RTL","country":"sa","defaultbool":false},{"id":2,"name":"German","rtl":"LTR","country":"de","defaultbool":false},{"id":3,"name":"English","rtl":"LTR","country":"us","defaultbool":true},{"id":4,"name":"Spanish","rtl":"LTR","country":"es","defaultbool":false},{"id":5,"name":"Farsi","rtl":"RTL","country":"ir","defaultbool":false},{"id":6,"name":"French","rtl":"LTR","country":"be","defaultbool":false},{"id":7,"name":"Russian","rtl":"LTR","country":"ru","defaultbool":false},{"id":8,"name":"Turkish","rtl":"LTR","country":"tr","defaultbool":false},{"id":9,"name":"Vietnamese","rtl":"LTR","country":"vi","defaultbool":false}]
// /// cms : {"header":[{"Company":[{"href":"company","target":null,"title":"Company"},{"href":"about-us","target":null,"title":"About Us"},{"href":"terms-of-use","target":null,"title":"Terms of Use"},{"href":"faq","target":null,"title":"FAQ"},{"href":"how-to-book","target":null,"title":"How to Book"}]}],"footer":[{"Company":[{"href":"company","target":null,"title":"Company"},{"href":"about-us","target":null,"title":"About Us"},{"href":"terms-of-use","target":null,"title":"Terms of Use"},{"href":"cookies-policy","target":null,"title":"Cookies policy"},{"href":"privacy-policy","target":null,"title":"Privacy Policy"}]},{"Support":[{"href":"supprt","target":null,"title":"Support"},{"href":"become-supplier","target":null,"title":"Become Supplier"},{"href":"faq","target":null,"title":"FAQ"},{"href":"booking-tips","target":null,"title":"Booking Tips"},{"href":"how-to-book","target":null,"title":"How to Book"}]},{"Services":[{"href":"services","target":null,"title":"Services"},{"href":"file-a-claim","target":null,"title":"File a claim"},{"href":"offers","target":null,"title":"Last minute deals"},{"href":"signup-supplier","target":null,"title":"Add your business"},{"href":"careers","target":null,"title":"Careers and Jobs"}]}]}
// /// app : {"appname":"PHPTRAVELS","site_url":"https://www.phptravels.net","offline":"0","offline_msg":"Our website is offline currently please visit us back soon.","restrict_website":false,"allow_registration":true,"allow_agent_registration":true,"suppliers_registration":true,"gmap_key":"AIzaSyDk_iQ6QWOTHW-TWoXSFLwbcnhaxlcnXXk","defaultbool_language":"en","multi_currency":true,"multi_language":true,"currency_code":"USD","copyright":"All Rights Reserved by PHPTRAVELS","email":"info@travelagency.com","phone":"+1-234-56789","address":"1355 Market St, Suite 900\r\n<br> San Francisco, United States \r\n","meta_title":"PHPTRAVELS | Travel Technology Partner","meta_keywords":"php travels script, php hotels booking script, php reservation system","meta_description":"php travels is complete booking and reservation system provides complete solution for travel agency"}
// /// social : [{"social_id":"9","social_name":"Facebook","social_link":"https://www.facebook.com/travelbusiness","social_position":"footer","social_order":"1","status":true,"social_icon":"slufm6otpasooc.png"},{"social_id":"10","social_name":"Twitter","social_link":"https://twitter.com/phptravels","social_position":"footer","social_order":"2","status":true,"social_icon":"9ztbr148kh4o8c8.png"},{"social_id":"11","social_name":"Youtube","social_link":"http:///www.youtube.com/phptravels","social_position":"footer","social_order":"3","status":true,"social_icon":"946746yt.png.png"},{"social_id":"12","social_name":"Whatsapp","social_link":"https://wa.me/13333334444","social_position":"footer","social_order":"4","status":true,"social_icon":"528076email.png.png"},{"social_id":"13","social_name":"Google-plus","social_link":"https://www.google.com/maps/dir//phptravels+google+maps/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x391905dd3eef0e45:0x25db87dacf506c66?sa=X&ved=2ahUKEwjn76Pn55DkAhWARhUIHVEvAEcQ9RcwGHoECA4QDg","social_position":"footer","social_order":"5","status":true,"social_icon":"2wz814aq9mgw04k.png"},{"social_id":"14","social_name":"Instagram","social_link":"https://www.instagram.com/phptravels_insta/","social_position":"footer","social_order":"6","status":true,"social_icon":"729370rs.png.png"}]
// /// featured_hotels : [{"id":"40","title":"Rendezvous Hotels","slug":"https://demotravels.com/api/hotels/singapore/singapore/Rendezvous-Hotels?&checkin=10/08/2022&checkout=11/08/2022&adults=2&child=0","thumbnail":"https://demotravels.com/api/uploads/images/hotels/slider/thumbs/75043_1.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i>","starsCount":"2","location":"Singapore","desc":"Rendezvous Hotel Singapore is located in the Arts and Heritage District, within 3 km (0.2 mi) of the Singapore National Museum, Singapore Art Museum, and Singapore Management University. The Dhoby Ghaut MRT (Mass Rapid Transit) station is a five-minute walk, and Orchard Road shops are a 10-to-15-minute walk. Hotel Features. The exterior of the building combines history and sophistication, while the interior offers an art-infused experience and a unique aesthetic. The hotel offers an outdoor pool, and a fitness center. Public areas and all guestrooms are nonsmoking. Straits Cafe@Rendezvous offers buffet and a la carte dining. Room service is available around the clock. A lobby bar and a gourmet food court are also on site. The hotel offers a concierge desk, a multilingual staff, and business services. Guestrooms. The air-conditioned guestrooms feature cable TV, pay movies, and in-room safes. Wireless and wired high-speed Internet access are available for a surcharge. Minibars and coffee/tea makers are also included. Bathrooms offer shower/tub combinations, handheld showers, and telephones. Wake-up calls are provided upon request","amenities":[{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/522827_airport.png","name":"Airport Transport"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/593292_receptionist.png","name":"Business Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/920288_wheelchar.png","name":"Disabled Facilities"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/78888_club.png","name":"Night Club"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/813018_laundry.png","name":"Laundry Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/53193_858245_wifi.png","name":"Wi-Fi Internet"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/906341_bar.png","name":"Bar Lounge"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/926605_811401_poll.png","name":"Swimming Pool"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/6348_541779_parking.png","name":"Inside Parking"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/117737_653168_busstation.png","name":"Shuttle Bus Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/403809_764557_fitness.png","name":"Fitness Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/308869_654419_spa.png","name":"SPA"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/124634_ac.png","name":"Air Conditioner"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/524780_card.png","name":"Cards Accepted"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/999481_elevator.png","name":"Elevator"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/179352_pet.png","name":"Pets Allowed"}],"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":0,"overall":0},"latitude":"1.354313975537631","longitude":"103.81743274072267","discount":"","address":"Rendezvous Hotel Singapore by Far East Hospitality Singapore","price":85,"currCode":"usd"},{"id":"38","title":"Hyatt Regency Perth","slug":"https://demotravels.com/api/hotels/australia/perth/Hyatt-Regency-Perth?&checkin=10/08/2022&checkout=11/08/2022&adults=2&child=0","thumbnail":"https://demotravels.com/api/uploads/images/hotels/slider/thumbs/637176_3.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i>","starsCount":"3","location":"Perth","desc":"This 5-star luxury hotel offers a 25-metre heated pool and a tennis court minutes from the banks of Swan River and Perth&rsquo;s city centre. A free city shuttle bus is provided. Hyatt Regency Perth Hotel provides large rooms that with views of the river or the city. Some rooms include free access the hotel&rsquo;s fitness centre and sauna. Guests can enjoy superb cuisine at any of the 5 dining outlets at the property including Cafe Restaurant, Joe&rsquo;s Oriental Diner with its spectacular open kitchen or the sumptuous Conservatory Lounge. Hyatt Regency Perth is 20 minutes&#39; drive from Perth international and Domestic Airport.","amenities":[{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/522827_airport.png","name":"Airport Transport"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/593292_receptionist.png","name":"Business Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/920288_wheelchar.png","name":"Disabled Facilities"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/78888_club.png","name":"Night Club"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/813018_laundry.png","name":"Laundry Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/79773_breakfast.png","name":"Restaurant"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/53193_858245_wifi.png","name":"Wi-Fi Internet"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/6348_541779_parking.png","name":"Inside Parking"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/117737_653168_busstation.png","name":"Shuttle Bus Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/403809_764557_fitness.png","name":"Fitness Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/308869_654419_spa.png","name":"SPA"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/7599_441834_children.png","name":"Children Activites"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/124634_ac.png","name":"Air Conditioner"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/524780_card.png","name":"Cards Accepted"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/999481_elevator.png","name":"Elevator"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/179352_pet.png","name":"Pets Allowed"}],"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":0,"overall":0},"latitude":"-31.95819269999999","longitude":"115.86670630000003","discount":"50","address":"Hyatt Regency Perth, Adelaide Terrace, Perth, Western Australia, Australia","price":100,"currCode":"usd"},{"id":"37","title":"Islamabad Marriott Hotel","slug":"https://demotravels.com/api/hotels/pakistan/islamabad/Islamabad-Marriott-Hotel?&checkin=10/08/2022&checkout=11/08/2022&adults=2&child=0","thumbnail":"https://demotravels.com/api/uploads/images/hotels/slider/thumbs/94178_4.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i>","starsCount":"5","location":"Islamabad","desc":"The 5-star Islamabad Marriott Hotel provides high speed wireless internet, an indoor pool and a fitness centre. Pampering spa treatments with separate male and female lounges are also available. Room service is provided 24 hours. The modern air-conditioned rooms are all equipped with a 42-inch flat-screen TV, a personal safe and tea/coffee making facilities. En suite bathrooms come with hot-water showers, bathrobes and free toiletries. Islamabad Marriott Hotel is about 20 km from both Islamabad Airport and Rawalpindi Station. Daewoo Bus Station is 25 km away. On-site parking and valet parking are free. Guests can visit the beauty salon, browse the on-site bookstore, or rent cars to explore the area. The hotel also provides a florist, daily newspapers and a tour desk. Continental buffet spreads are offered at Nadia, while Chinese cuisine is served at Dynasty. Other dining options include The Royal Elephant Thai restaurant, Jason&#39;s Steak House, Dumpukht Mughlai Restaurant and Sakura Japanes","amenities":[{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/522827_airport.png","name":"Airport Transport"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/593292_receptionist.png","name":"Business Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/920288_wheelchar.png","name":"Disabled Facilities"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/813018_laundry.png","name":"Laundry Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/79773_breakfast.png","name":"Restaurant"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/53193_858245_wifi.png","name":"Wi-Fi Internet"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/906341_bar.png","name":"Bar Lounge"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/6348_541779_parking.png","name":"Inside Parking"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/403809_764557_fitness.png","name":"Fitness Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/308869_654419_spa.png","name":"SPA"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/7599_441834_children.png","name":"Children Activites"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/124634_ac.png","name":"Air Conditioner"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/999481_elevator.png","name":"Elevator"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/179352_pet.png","name":"Pets Allowed"}],"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":0,"overall":0},"latitude":"33.7293882","longitude":"73.09314610000001","discount":"15","address":"Islamabad Marriott Hotel, Islamabad, Pakistan","price":100,"currCode":"usd"},{"id":"36","title":"Rose Rayhaan Rotana","slug":"https://demotravels.com/api/hotels/united-arab-emirates/dubai/Rose-Rayhaan-Rotana?&checkin=10/08/2022&checkout=11/08/2022&adults=2&child=0","thumbnail":"https://demotravels.com/api/uploads/images/hotels/slider/thumbs/596771_5.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i>","starsCount":"2","location":"Dubai","desc":"Occupying the world&rsquo;s second tallest hotel, the Rose Rayhaan by Rotana offers convenient accommodation surrounded by several restaurants and caf&eacute;s. Financial Centre Metro Station is 2 minutes&#39; walk. Rose Rayhaan is a 333-metre tall, 72-storey building providing a variety of modern, spacious rooms and suites that include LCD TVs and feature stunning city views. Rose Rayhaan&rsquo;s swimming pool is situated on the 4th floor of the hotel. Other facilities include a hot tub, massage rooms, sauna and steam rooms. The largest shopping centre in the world, Dubai Mall, is 1.5 km from this alcohol-free hotel. Dubai Exhibition Centre, the Mall of the Emirates and the Burjuman Shopping Mall are also within a 10 minute drive from the property. We speak your language! Hotel Rooms: 462, Hotel Chain: Rotana.","amenities":[{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/522827_airport.png","name":"Airport Transport"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/593292_receptionist.png","name":"Business Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/920288_wheelchar.png","name":"Disabled Facilities"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/78888_club.png","name":"Night Club"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/813018_laundry.png","name":"Laundry Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/6348_541779_parking.png","name":"Inside Parking"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/117737_653168_busstation.png","name":"Shuttle Bus Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/403809_764557_fitness.png","name":"Fitness Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/308869_654419_spa.png","name":"SPA"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/7599_441834_children.png","name":"Children Activites"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/124634_ac.png","name":"Air Conditioner"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/162720_hall.png","name":"Banquet Hall"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/524780_card.png","name":"Cards Accepted"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/999481_elevator.png","name":"Elevator"}],"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":0,"overall":0},"latitude":"25.211667","longitude":"55.276388999999995","discount":"2","address":"Rose Rayhaan by Rotana - Trade Centre - Dubai - United Arab Emirates","price":80,"currCode":"usd"},{"id":"34","title":"Malmaison Manchester","slug":"https://demotravels.com/api/hotels/united-arab-emirates/dubai/Malmaison-Manchester?&checkin=10/08/2022&checkout=11/08/2022&adults=2&child=0","thumbnail":"https://demotravels.com/api/uploads/images/hotels/slider/thumbs/100617_6.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i>","starsCount":"3","location":"Dubai","desc":"Opposite Manchester Piccadilly Station, this beautifully converted Victorian warehouse has boutique bedrooms and a sumptuous spa. In Manchester&rsquo;s vibrant centre, the hotel also features a brasserie and fitness centre. The chic rooms have luxurious beds and intimate mood lighting. Rooms also feature a plasma-screen TV and high-speed internet access, and the modern bathrooms have power showers and exclusive toiletries.","amenities":[{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/920288_wheelchar.png","name":"Disabled Facilities"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/78888_club.png","name":"Night Club"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/813018_laundry.png","name":"Laundry Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/79773_breakfast.png","name":"Restaurant"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/53193_858245_wifi.png","name":"Wi-Fi Internet"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/906341_bar.png","name":"Bar Lounge"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/926605_811401_poll.png","name":"Swimming Pool"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/6348_541779_parking.png","name":"Inside Parking"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/117737_653168_busstation.png","name":"Shuttle Bus Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/403809_764557_fitness.png","name":"Fitness Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/7599_441834_children.png","name":"Children Activites"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/124634_ac.png","name":"Air Conditioner"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/162720_hall.png","name":"Banquet Hall"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/999481_elevator.png","name":"Elevator"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/179352_pet.png","name":"Pets Allowed"}],"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":0,"overall":0},"latitude":"53.4807593","longitude":"-2.2426305000000184","discount":"10","address":"Malmaison Manchester, Manchester, United Kingdom","price":20,"currCode":"usd"},{"id":"33","title":"Oasis Beach Tower","slug":"https://demotravels.com/api/hotels/united-arab-emirates/dubai/Oasis-Beach-Tower?&checkin=10/08/2022&checkout=11/08/2022&adults=2&child=0","thumbnail":"https://demotravels.com/api/uploads/images/hotels/slider/thumbs/964202_7.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i>","starsCount":"4","location":"Dubai","desc":"This sophisticated beachfront property with its iconic exterior, features 180 luxury serviced and self-catering apartments. The spacious apartments each have a fully equipped kitchen, living room and dining area plus 2, 3 or 4 ensuite bedrooms. Guests may enjoy stunning views over The Palm Jumeirah and Dubai Marina, restaurants, a swimming pool deck just steps from Jumeirah beach and access to the private beach at JA Jebel Ali Golf Resort.","amenities":[{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/522827_airport.png","name":"Airport Transport"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/593292_receptionist.png","name":"Business Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/920288_wheelchar.png","name":"Disabled Facilities"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/78888_club.png","name":"Night Club"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/813018_laundry.png","name":"Laundry Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/79773_breakfast.png","name":"Restaurant"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/53193_858245_wifi.png","name":"Wi-Fi Internet"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/906341_bar.png","name":"Bar Lounge"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/6348_541779_parking.png","name":"Inside Parking"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/403809_764557_fitness.png","name":"Fitness Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/308869_654419_spa.png","name":"SPA"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/7599_441834_children.png","name":"Children Activites"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/124634_ac.png","name":"Air Conditioner"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/162720_hall.png","name":"Banquet Hall"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/999481_elevator.png","name":"Elevator"}],"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":0,"overall":0},"latitude":"25.2048493","longitude":"55.270782800000006","discount":"1","address":"JA Oasis Beach Tower - Dubai - United Arab Emirates","price":50,"currCode":"usd"},{"id":"32","title":"Jumeirah Beach Hotel","slug":"https://demotravels.com/api/hotels/united-arab-emirates/dubai/Jumeirah-Beach-Hotel?&checkin=10/08/2022&checkout=11/08/2022&adults=2&child=0","thumbnail":"https://demotravels.com/api/uploads/images/hotels/slider/thumbs/164074_1.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i>","starsCount":"5","location":"Dubai","desc":"UMEIRAH BEACH HOTEL - PREMIUM FAMILY LIFESTYLE DESTINATION With its striking wave-like design, Jumeirah Beach Hotel&#39;s five-star resort is one of Dubai&rsquo;s most instantly recognisable structures. Happily for our guests, the Jumeirah Beach Hotel in Dubai is equally famed for its amazing value and sheer wealth of options to enjoying your stay. All the hotel&rsquo;s 617 rooms, suites and villas are luxuriously furnished and provide spectacular views of the Arabian Gulf. And once you&rsquo;ve finished taking in the view, you can choose from the widest array of leisure facilities around one of the best family hotels in Dubai, including a scuba diving centre, five swimming pools, Sinbad&rsquo;s Kids Club, The Hub for teens and complimentary, unlimited access to the Wild Wadi Water Park. You&rsquo;ll find everything you&rsquo;re looking for and much more at Jumeirah Beach Hotel in Dubai.","amenities":[{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/593292_receptionist.png","name":"Business Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/920288_wheelchar.png","name":"Disabled Facilities"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/78888_club.png","name":"Night Club"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/813018_laundry.png","name":"Laundry Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/79773_breakfast.png","name":"Restaurant"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/53193_858245_wifi.png","name":"Wi-Fi Internet"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/6348_541779_parking.png","name":"Inside Parking"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/117737_653168_busstation.png","name":"Shuttle Bus Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/403809_764557_fitness.png","name":"Fitness Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/308869_654419_spa.png","name":"SPA"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/7599_441834_children.png","name":"Children Activites"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/124634_ac.png","name":"Air Conditioner"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/162720_hall.png","name":"Banquet Hall"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/179352_pet.png","name":"Pets Allowed"}],"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":0,"overall":0},"latitude":"25.1417633","longitude":"55.190799200000015","discount":"20","address":"Jumeirah Beach Hotel - Jumeirah - Dubai - United Arab Emirates","price":22,"currCode":"usd"},{"id":"31","title":"Madinah Moevenpick Hotel","slug":"https://demotravels.com/api/hotels/united-arab-emirates/dubai/Madinah-Moevenpick-Hotel?&checkin=10/08/2022&checkout=11/08/2022&adults=2&child=0","thumbnail":"https://demotravels.com/api/uploads/images/hotels/slider/thumbs/603302_10.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i>","starsCount":"2","location":"Dubai","desc":"This luxury hotel features 3 restaurants. Guests are served a complimentary breakfast each morning. Complimentary wireless and wired high-speed Internet access is available in public areas and a computer station is located on site. This 5-star hotel features business amenities including a 24-hour business center and small meeting rooms. The staff can provide concierge services, wedding services, and tour assistance. Additional amenities include multilingual staff, gift shops/news stands, and laundry facilities. Onsite parking is complimentary.","amenities":[{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/522827_airport.png","name":"Airport Transport"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/920288_wheelchar.png","name":"Disabled Facilities"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/78888_club.png","name":"Night Club"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/813018_laundry.png","name":"Laundry Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/926605_811401_poll.png","name":"Swimming Pool"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/6348_541779_parking.png","name":"Inside Parking"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/117737_653168_busstation.png","name":"Shuttle Bus Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/403809_764557_fitness.png","name":"Fitness Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/308869_654419_spa.png","name":"SPA"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/7599_441834_children.png","name":"Children Activites"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/124634_ac.png","name":"Air Conditioner"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/162720_hall.png","name":"Banquet Hall"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/524780_card.png","name":"Cards Accepted"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/179352_pet.png","name":"Pets Allowed"}],"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":0,"overall":0},"latitude":"24.5246542","longitude":"39.56918410000003","discount":"6","address":"Mövenpick Hotel Anwar Al Madinah, Madinah, Al Madinah Province, Saudi Arabia","price":57,"currCode":"usd"},{"id":"28","title":"Alzer Hotel Istanbul","slug":"https://demotravels.com/api/hotels/turkey/istanbul/Alzer-Hotel-Istanbul?&checkin=10/08/2022&checkout=11/08/2022&adults=2&child=0","thumbnail":"https://demotravels.com/api/uploads/images/hotels/slider/thumbs/678222_12.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i>","starsCount":"4","location":"Istanbul","desc":"Along with stunning views of the Blue Mosque and Hagia Sophia from its rooftop terrace, this special category hotel offers personalised service and free wireless internet access in the heart of Sultanahmet. The historic townhouse Alzer Hotel is over 100 years old and has been fully restored with great attention to detail. The clean and comfortable guest rooms offer modern amenities, including air conditioning. Start each day with a rich breakfast served on Alzer&#39;s charming terrace, whilst admiring views of the Blue Mosque and Marmara Sea. Traditional Turkish cuisine is served in the evenings. Enjoy a stroll around the historic neighbourhood before returning to Alzer Hotel for peace and relaxation. Alzer&#39;s friendly staff is available 24 hours a day to help you with any information you may need to make the most of your stay.","amenities":[{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/593292_receptionist.png","name":"Business Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/920288_wheelchar.png","name":"Disabled Facilities"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/78888_club.png","name":"Night Club"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/813018_laundry.png","name":"Laundry Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/79773_breakfast.png","name":"Restaurant"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/53193_858245_wifi.png","name":"Wi-Fi Internet"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/926605_811401_poll.png","name":"Swimming Pool"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/6348_541779_parking.png","name":"Inside Parking"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/117737_653168_busstation.png","name":"Shuttle Bus Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/403809_764557_fitness.png","name":"Fitness Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/7599_441834_children.png","name":"Children Activites"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/124634_ac.png","name":"Air Conditioner"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/162720_hall.png","name":"Banquet Hall"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/524780_card.png","name":"Cards Accepted"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/179352_pet.png","name":"Pets Allowed"}],"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":0,"overall":0},"latitude":"41.020169","longitude":"28.93386399999997","discount":"9","address":"Alzer Hotel, Fatih, Istanbul, Turkey","price":70,"currCode":"usd"}]
// /// featured_flights : [{"id":"12","title":"Srilanka Airways","from":"DXB Dubai","to":"RML Colombo","thumbnail":"https://demotravels.com/api/uploads/images/flights/slider/175znubux0pw4gw.png","desc":"","price":780,"currCode":"usd"},{"id":"11","title":"Air Phillpines","from":"CGK Jakarta","to":"DPS Bali","thumbnail":"https://demotravels.com/api/uploads/images/flights/slider/b47cgm5h3tc8sw0.png","desc":"","price":450,"currCode":"usd"},{"id":"10","title":"Gulf Air","from":"CAI Cairo","to":"ANK Ankara","thumbnail":"https://demotravels.com/api/uploads/images/flights/slider/91raniksw5wc404.png","desc":"","price":650,"currCode":"usd"},{"id":"9","title":"Etihad Airways","from":"SHJ Sharjah","to":"KHI Karachi","thumbnail":"https://demotravels.com/api/uploads/images/flights/slider/9nl4tj6jspgco00.png","desc":"","price":800,"currCode":"usd"},{"id":"8","title":"Canadian Airways","from":"YXC Canada","to":"JFK New York","thumbnail":"https://demotravels.com/api/uploads/images/flights/slider/rd28iqxqv808gk.png","desc":"","price":860,"currCode":"usd"},{"id":"7","title":"Turkish Airlines","from":"IST Istanbul","to":"DXB Dubai","thumbnail":"https://demotravels.com/api/uploads/images/flights/slider/2qccdvq0wvy840c.png","desc":"","price":800,"currCode":"usd"},{"id":"6","title":"Air India","from":"BOM Mumbai","to":"DXB Dubai","thumbnail":"https://demotravels.com/api/uploads/images/flights/slider/7lcw4cf8hwo480w.png","desc":"","price":450,"currCode":"usd"},{"id":"5","title":"Emirates Airlines","from":"DXB Dubai","to":"KWI Kuwait","thumbnail":"https://demotravels.com/api/uploads/images/flights/slider/20tegedgl4yswgk.png","desc":"","price":900,"currCode":"usd"},{"id":"4","title":"American Airlines","from":"MTH Florida","to":"YXC Canada","thumbnail":"https://demotravels.com/api/uploads/images/flights/slider/ae838q1tjrscs8k.png","desc":"","price":1200,"currCode":"usd"},{"id":"3","title":"Pakistan Airlines","from":"ISB Islamabad","to":"JED Jeddah","thumbnail":"https://demotravels.com/api/uploads/images/flights/slider/ybaegc18zpc4ko.png","desc":"","price":620,"currCode":"usd"},{"id":"2","title":"Malaysia Airlines","from":"KUL Malaysia","to":"SIN Singapore","thumbnail":"https://demotravels.com/api/uploads/images/flights/slider/1gmmwudrvzi888k.png","desc":"","price":800,"currCode":"usd"},{"id":"1","title":"Qater Airlines","from":"LHE Lahore","to":"DXB Dubai","thumbnail":"https://demotravels.com/api/uploads/images/flights/slider/e2kkchakfxw80w8.png","desc":"","price":750,"currCode":"usd"}]
// /// featured_tours : [{"id":"24","title":"Sheraton Trip","slug":"https://demotravels.com/api/tours/united-arab-emirates/dubai/Sheraton-Trip?date=10/08/2022&adults=1","thumbnail":"https://demotravels.com/api/uploads/images/tours/slider/thumbs/9.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i>","starsCount":"5","location":"Dubai","desc":"Experience hospitality at the city, from its stunning to vibrant culture, architecture and exquisite cuisines.\r\n\r\nTake a weekend trip on the occasion&nbsp;and create a memorable experience with your loved one. If you are a sun and sea lover, this paradise offers you an array of splendid sandy beaches, where you can spend time relaxing or go on a refreshing yacht experience. And if you are a history lover, explore the birthplace of many civilizations, empires, historic figures and legends together with diverse mixture of many different ethnic origins.\r\n&nbsp;\r\n\r\n\r\nDay 1\r\nArrive to the city&nbsp;and transfer to your hotel. Check in and spend the day at leisure.\r\n\r\nDay 2\r\nAfter breakfast, go on the Boshphorus cruise and the Spice market tour. Enjoy the traditional excursion along the waterway separating Europe and Asia. The shore is lined with old wooden villas, palaces of marble, fortresses and small fishing villages. Witness major highlights whilst sailing such as the Dolmabah&ccedil;e Palace, the parks and pavilions of the Yildiz Palace. Visit the colorful Spice Market to buy local spices and shop for souvenirs.\r\n\r\nDay 3\r\nBegin your day with a delicious breakfast and go on your city tour on seat in coach basis, the heart of the Imperial Center from where the Byzantine and Ottoman Empires once ruled. Explore the Hippodrome, a beautiful park known as the Byzantine chariot racetrack &ndash; a stadium capable of holding 100,000 people. There are three great monuments in the Hippodrome, the Egyptian Obelisk of 1500 BC, the Serpentine Column from the Temple of Apollo at Delphi and the German Fountain of Wilhelm II. Later visit the Blue Mosque, which faces Hagia Sophia and features six towering minarets and spectacular interior covered by overwhelmingly blue Iznik tiles.\r\n\r\nDay 4\r\nAfter breakfast, check out from your hotel and spend the day shopping and exploring the city on your own. In the evening, transfer to the airport and board your flight and return home with great memories of your holiday.\r\n","amenities":null,"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"4","overall":5.5},"latitude":"21.8768446","longitude":"-159.4646715","discount":"25","price":200,"currCode":"usd","inclusions":null,"tourDays":"13","tourNights":"12","tourType":"Holidays"},{"id":"26","title":"Big Bus Tour of Dubai","slug":"https://demotravels.com/api/tours/united-arab-emirates/dubai/Big-Bus-Tour-of-Dubai?date=10/08/2022&adults=1","thumbnail":"https://demotravels.com/api/uploads/images/tours/slider/thumbs/dubai.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i>","starsCount":"5","location":"Dubai","desc":"Experience hospitality at the city, from its stunning to vibrant culture, architecture and exquisite cuisines.\r\n\r\nTake a weekend trip on the occasion&nbsp;and create a memorable experience with your loved one. If you are a sun and sea lover, this paradise offers you an array of splendid sandy beaches, where you can spend time relaxing or go on a refreshing yacht experience. And if you are a history lover, explore the birthplace of many civilizations, empires, historic figures and legends together with diverse mixture of many different ethnic origins.\r\n&nbsp;\r\n\r\n\r\nDay 1\r\nArrive to the city&nbsp;and transfer to your hotel. Check in and spend the day at leisure.\r\n\r\nDay 2\r\nAfter breakfast, go on the Boshphorus cruise and the Spice market tour. Enjoy the traditional excursion along the waterway separating Europe and Asia. The shore is lined with old wooden villas, palaces of marble, fortresses and small fishing villages. Witness major highlights whilst sailing such as the Dolmabah&ccedil;e Palace, the parks and pavilions of the Yildiz Palace. Visit the colorful Spice Market to buy local spices and shop for souvenirs.\r\n\r\nDay 3\r\nBegin your day with a delicious breakfast and go on your city tour on seat in coach basis, the heart of the Imperial Center from where the Byzantine and Ottoman Empires once ruled. Explore the Hippodrome, a beautiful park known as the Byzantine chariot racetrack &ndash; a stadium capable of holding 100,000 people. There are three great monuments in the Hippodrome, the Egyptian Obelisk of 1500 BC, the Serpentine Column from the Temple of Apollo at Delphi and the German Fountain of Wilhelm II. Later visit the Blue Mosque, which faces Hagia Sophia and features six towering minarets and spectacular interior covered by overwhelmingly blue Iznik tiles.\r\n\r\nDay 4\r\nAfter breakfast, check out from your hotel and spend the day shopping and exploring the city on your own. In the evening, transfer to the airport and board your flight and return home with great memories of your holiday.\r\n","amenities":null,"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"4","overall":4.5},"latitude":"25.2541523","longitude":"55.33096249999994","discount":"","price":60,"currCode":"usd","inclusions":null,"tourDays":"2","tourNights":"2","tourType":"Holidays"},{"id":"28","title":"Day Visit of Petra from Oman","slug":"https://demotravels.com/api/tours/oman/petra/Day-Visit-of-Petra-from-Oman?date=10/08/2022&adults=1","thumbnail":"https://demotravels.com/api/uploads/images/tours/slider/thumbs/petra.jpg","stars":"<i class='fa fa-star-o'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i>","starsCount":"0","location":"Petra","desc":"Experience hospitality at the city, from its stunning to vibrant culture, architecture and exquisite cuisines.\r\n\r\nTake a weekend trip on the occasion&nbsp;and create a memorable experience with your loved one. If you are a sun and sea lover, this paradise offers you an array of splendid sandy beaches, where you can spend time relaxing or go on a refreshing yacht experience. And if you are a history lover, explore the birthplace of many civilizations, empires, historic figures and legends together with diverse mixture of many different ethnic origins.\r\n&nbsp;\r\n\r\n\r\nDay 1\r\nArrive to the city&nbsp;and transfer to your hotel. Check in and spend the day at leisure.\r\n\r\nDay 2\r\nAfter breakfast, go on the Boshphorus cruise and the Spice market tour. Enjoy the traditional excursion along the waterway separating Europe and Asia. The shore is lined with old wooden villas, palaces of marble, fortresses and small fishing villages. Witness major highlights whilst sailing such as the Dolmabah&ccedil;e Palace, the parks and pavilions of the Yildiz Palace. Visit the colorful Spice Market to buy local spices and shop for souvenirs.\r\n\r\nDay 3\r\nBegin your day with a delicious breakfast and go on your city tour on seat in coach basis, the heart of the Imperial Center from where the Byzantine and Ottoman Empires once ruled. Explore the Hippodrome, a beautiful park known as the Byzantine chariot racetrack &ndash; a stadium capable of holding 100,000 people. There are three great monuments in the Hippodrome, the Egyptian Obelisk of 1500 BC, the Serpentine Column from the Temple of Apollo at Delphi and the German Fountain of Wilhelm II. Later visit the Blue Mosque, which faces Hagia Sophia and features six towering minarets and spectacular interior covered by overwhelmingly blue Iznik tiles.\r\n\r\nDay 4\r\nAfter breakfast, check out from your hotel and spend the day shopping and exploring the city on your own. In the evening, transfer to the airport and board your flight and return home with great memories of your holiday.\r\n","amenities":null,"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"2","overall":6.5},"latitude":"32.5473468","longitude":"35.85254609999993","discount":"15","price":66,"currCode":"usd","inclusions":null,"tourDays":"1","tourNights":"1","tourType":"History / Culture"},{"id":"29","title":"Hurghada Sunset Desert Safari","slug":"https://demotravels.com/api/tours/egypt/hurghada/Hurghada-Sunset-Desert-Safari?date=10/08/2022&adults=1","thumbnail":"https://demotravels.com/api/uploads/images/tours/slider/thumbs/hurghada.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i>","starsCount":"5","location":"Hurghada","desc":"Experience hospitality at the city, from its stunning to vibrant culture, architecture and exquisite cuisines.\r\n\r\nTake a weekend trip on the occasion&nbsp;and create a memorable experience with your loved one. If you are a sun and sea lover, this paradise offers you an array of splendid sandy beaches, where you can spend time relaxing or go on a refreshing yacht experience. And if you are a history lover, explore the birthplace of many civilizations, empires, historic figures and legends together with diverse mixture of many different ethnic origins.\r\n&nbsp;\r\n\r\n\r\nDay 1\r\nArrive to the city&nbsp;and transfer to your hotel. Check in and spend the day at leisure.\r\n\r\nDay 2\r\nAfter breakfast, go on the Boshphorus cruise and the Spice market tour. Enjoy the traditional excursion along the waterway separating Europe and Asia. The shore is lined with old wooden villas, palaces of marble, fortresses and small fishing villages. Witness major highlights whilst sailing such as the Dolmabah&ccedil;e Palace, the parks and pavilions of the Yildiz Palace. Visit the colorful Spice Market to buy local spices and shop for souvenirs.\r\n\r\nDay 3\r\nBegin your day with a delicious breakfast and go on your city tour on seat in coach basis, the heart of the Imperial Center from where the Byzantine and Ottoman Empires once ruled. Explore the Hippodrome, a beautiful park known as the Byzantine chariot racetrack &ndash; a stadium capable of holding 100,000 people. There are three great monuments in the Hippodrome, the Egyptian Obelisk of 1500 BC, the Serpentine Column from the Temple of Apollo at Delphi and the German Fountain of Wilhelm II. Later visit the Blue Mosque, which faces Hagia Sophia and features six towering minarets and spectacular interior covered by overwhelmingly blue Iznik tiles.\r\n\r\nDay 4\r\nAfter breakfast, check out from your hotel and spend the day shopping and exploring the city on your own. In the evening, transfer to the airport and board your flight and return home with great memories of your holiday.\r\n","amenities":null,"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"4","overall":5.5},"latitude":"27.2578957","longitude":"33.81160669999997","discount":"","price":50,"currCode":"usd","inclusions":null,"tourDays":"4","tourNights":"5","tourType":"Adventure"},{"id":"30","title":"Legoland Malaysia Day Pass","slug":"https://demotravels.com/api/tours/malaysia/johor-bahru/Legoland-Malaysia-Day-Pass?date=10/08/2022&adults=1","thumbnail":"https://demotravels.com/api/uploads/images/tours/slider/thumbs/malaysia.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i>","starsCount":"2","location":"Johor Bahru","desc":"Experience hospitality at the city, from its stunning to vibrant culture, architecture and exquisite cuisines.\r\n\r\nTake a weekend trip on the occasion&nbsp;and create a memorable experience with your loved one. If you are a sun and sea lover, this paradise offers you an array of splendid sandy beaches, where you can spend time relaxing or go on a refreshing yacht experience. And if you are a history lover, explore the birthplace of many civilizations, empires, historic figures and legends together with diverse mixture of many different ethnic origins.\r\n&nbsp;\r\n\r\n\r\nDay 1\r\nArrive to the city&nbsp;and transfer to your hotel. Check in and spend the day at leisure.\r\n\r\nDay 2\r\nAfter breakfast, go on the Boshphorus cruise and the Spice market tour. Enjoy the traditional excursion along the waterway separating Europe and Asia. The shore is lined with old wooden villas, palaces of marble, fortresses and small fishing villages. Witness major highlights whilst sailing such as the Dolmabah&ccedil;e Palace, the parks and pavilions of the Yildiz Palace. Visit the colorful Spice Market to buy local spices and shop for souvenirs.\r\n\r\nDay 3\r\nBegin your day with a delicious breakfast and go on your city tour on seat in coach basis, the heart of the Imperial Center from where the Byzantine and Ottoman Empires once ruled. Explore the Hippodrome, a beautiful park known as the Byzantine chariot racetrack &ndash; a stadium capable of holding 100,000 people. There are three great monuments in the Hippodrome, the Egyptian Obelisk of 1500 BC, the Serpentine Column from the Temple of Apollo at Delphi and the German Fountain of Wilhelm II. Later visit the Blue Mosque, which faces Hagia Sophia and features six towering minarets and spectacular interior covered by overwhelmingly blue Iznik tiles.\r\n\r\nDay 4\r\nAfter breakfast, check out from your hotel and spend the day shopping and exploring the city on your own. In the evening, transfer to the airport and board your flight and return home with great memories of your holiday.\r\n","amenities":null,"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"3","overall":7.29999999999999982236431605997495353221893310546875},"latitude":"1.426637","longitude":"103.63179030000003","discount":"15","price":45,"currCode":"usd","inclusions":null,"tourDays":"1","tourNights":"0","tourType":"Holidays"},{"id":"32","title":"Sydney and Bondi Beach Explorer","slug":"https://demotravels.com/api/tours/australia/sydney/Sydney-and-Bondi-Beach-Explorer?date=10/08/2022&adults=1","thumbnail":"https://demotravels.com/api/uploads/images/tours/slider/thumbs/sydney.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i>","starsCount":"3","location":"Sydney","desc":"Experience hospitality at the city, from its stunning to vibrant culture, architecture and exquisite cuisines.\r\n\r\nTake a weekend trip on the occasion&nbsp;and create a memorable experience with your loved one. If you are a sun and sea lover, this paradise offers you an array of splendid sandy beaches, where you can spend time relaxing or go on a refreshing yacht experience. And if you are a history lover, explore the birthplace of many civilizations, empires, historic figures and legends together with diverse mixture of many different ethnic origins.\r\n&nbsp;\r\n\r\n\r\nDay 1\r\nArrive to the city&nbsp;and transfer to your hotel. Check in and spend the day at leisure.\r\n\r\nDay 2\r\nAfter breakfast, go on the Boshphorus cruise and the Spice market tour. Enjoy the traditional excursion along the waterway separating Europe and Asia. The shore is lined with old wooden villas, palaces of marble, fortresses and small fishing villages. Witness major highlights whilst sailing such as the Dolmabah&ccedil;e Palace, the parks and pavilions of the Yildiz Palace. Visit the colorful Spice Market to buy local spices and shop for souvenirs.\r\n\r\nDay 3\r\nBegin your day with a delicious breakfast and go on your city tour on seat in coach basis, the heart of the Imperial Center from where the Byzantine and Ottoman Empires once ruled. Explore the Hippodrome, a beautiful park known as the Byzantine chariot racetrack &ndash; a stadium capable of holding 100,000 people. There are three great monuments in the Hippodrome, the Egyptian Obelisk of 1500 BC, the Serpentine Column from the Temple of Apollo at Delphi and the German Fountain of Wilhelm II. Later visit the Blue Mosque, which faces Hagia Sophia and features six towering minarets and spectacular interior covered by overwhelmingly blue Iznik tiles.\r\n\r\nDay 4\r\nAfter breakfast, check out from your hotel and spend the day shopping and exploring the city on your own. In the evening, transfer to the airport and board your flight and return home with great memories of your holiday.\r\n","amenities":null,"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"6","overall":6.29999999999999982236431605997495353221893310546875},"latitude":"-33.8908435","longitude":"151.27429059999997","discount":"5","price":125,"currCode":"usd","inclusions":null,"tourDays":"5","tourNights":"4","tourType":"Beach Holidays"},{"id":"33","title":"Old and New Delhi City Tour","slug":"https://demotravels.com/api/tours/india/new-delhi/Old-and-New-Delhi-City-Tour?date=10/08/2022&adults=1","thumbnail":"https://demotravels.com/api/uploads/images/tours/slider/thumbs/211701_delhi.jpg","stars":"<i class='fa fa-star-o'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i>","starsCount":"0","location":"New Delhi","desc":"Experience hospitality at the city, from its stunning to vibrant culture, architecture and exquisite cuisines.\r\n\r\nTake a weekend trip on the occasion&nbsp;and create a memorable experience with your loved one. If you are a sun and sea lover, this paradise offers you an array of splendid sandy beaches, where you can spend time relaxing or go on a refreshing yacht experience. And if you are a history lover, explore the birthplace of many civilizations, empires, historic figures and legends together with diverse mixture of many different ethnic origins.\r\n&nbsp;\r\n\r\n\r\nDay 1\r\nArrive to the city&nbsp;and transfer to your hotel. Check in and spend the day at leisure.\r\n\r\nDay 2\r\nAfter breakfast, go on the Boshphorus cruise and the Spice market tour. Enjoy the traditional excursion along the waterway separating Europe and Asia. The shore is lined with old wooden villas, palaces of marble, fortresses and small fishing villages. Witness major highlights whilst sailing such as the Dolmabah&ccedil;e Palace, the parks and pavilions of the Yildiz Palace. Visit the colorful Spice Market to buy local spices and shop for souvenirs.\r\n\r\nDay 3\r\nBegin your day with a delicious breakfast and go on your city tour on seat in coach basis, the heart of the Imperial Center from where the Byzantine and Ottoman Empires once ruled. Explore the Hippodrome, a beautiful park known as the Byzantine chariot racetrack &ndash; a stadium capable of holding 100,000 people. There are three great monuments in the Hippodrome, the Egyptian Obelisk of 1500 BC, the Serpentine Column from the Temple of Apollo at Delphi and the German Fountain of Wilhelm II. Later visit the Blue Mosque, which faces Hagia Sophia and features six towering minarets and spectacular interior covered by overwhelmingly blue Iznik tiles.\r\n\r\nDay 4\r\nAfter breakfast, check out from your hotel and spend the day shopping and exploring the city on your own. In the evening, transfer to the airport and board your flight and return home with great memories of your holiday.\r\n","amenities":null,"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"4","overall":5.29999999999999982236431605997495353221893310546875},"latitude":"28.6545622","longitude":"77.23089549999997","discount":"","price":100,"currCode":"usd","inclusions":null,"tourDays":"8","tourNights":"6","tourType":"Private"},{"id":"34","title":"Hong Kong Island Tour","slug":"https://demotravels.com/api/tours/hong-kong/hong-kong/Hong-Kong-Island-Tour?date=10/08/2022&adults=1","thumbnail":"https://demotravels.com/api/uploads/images/tours/slider/thumbs/hongkong.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i>","starsCount":"4","location":"Hong Kong","desc":"Experience hospitality at the city, from its stunning to vibrant culture, architecture and exquisite cuisines.\r\n\r\nTake a weekend trip on the occasion&nbsp;and create a memorable experience with your loved one. If you are a sun and sea lover, this paradise offers you an array of splendid sandy beaches, where you can spend time relaxing or go on a refreshing yacht experience. And if you are a history lover, explore the birthplace of many civilizations, empires, historic figures and legends together with diverse mixture of many different ethnic origins.\r\n&nbsp;\r\n\r\n\r\nDay 1\r\nArrive to the city&nbsp;and transfer to your hotel. Check in and spend the day at leisure.\r\n\r\nDay 2\r\nAfter breakfast, go on the Boshphorus cruise and the Spice market tour. Enjoy the traditional excursion along the waterway separating Europe and Asia. The shore is lined with old wooden villas, palaces of marble, fortresses and small fishing villages. Witness major highlights whilst sailing such as the Dolmabah&ccedil;e Palace, the parks and pavilions of the Yildiz Palace. Visit the colorful Spice Market to buy local spices and shop for souvenirs.\r\n\r\nDay 3\r\nBegin your day with a delicious breakfast and go on your city tour on seat in coach basis, the heart of the Imperial Center from where the Byzantine and Ottoman Empires once ruled. Explore the Hippodrome, a beautiful park known as the Byzantine chariot racetrack &ndash; a stadium capable of holding 100,000 people. There are three great monuments in the Hippodrome, the Egyptian Obelisk of 1500 BC, the Serpentine Column from the Temple of Apollo at Delphi and the German Fountain of Wilhelm II. Later visit the Blue Mosque, which faces Hagia Sophia and features six towering minarets and spectacular interior covered by overwhelmingly blue Iznik tiles.\r\n\r\nDay 4\r\nAfter breakfast, check out from your hotel and spend the day shopping and exploring the city on your own. In the evening, transfer to the airport and board your flight and return home with great memories of your holiday.\r\n","amenities":null,"avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"6","overall":6.20000000000000017763568394002504646778106689453125},"latitude":"22.2824673","longitude":"114.1615726","discount":"25","price":75,"currCode":"usd","inclusions":null,"tourDays":"2","tourNights":"3","tourType":"Corporate"},{"id":"35","title":"6 Days Around Thailand","slug":"https://demotravels.com/api/tours/thailand/thailand/6-Days-Around-Thailand?date=10/08/2022&adults=1","thumbnail":"https://demotravels.com/api/uploads/images/tours/slider/thumbs/thailand.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i>","starsCount":"3","location":"Thailand","desc":"Experience hospitality at the city, from its stunning to vibrant culture, architecture and exquisite cuisines.\r\n\r\nTake a weekend trip on the occasion&nbsp;and create a memorable experience with your loved one. If you are a sun and sea lover, this paradise offers you an array of splendid sandy beaches, where you can spend time relaxing or go on a refreshing yacht experience. And if you are a history lover, explore the birthplace of many civilizations, empires, historic figures and legends together with diverse mixture of many different ethnic origins.\r\n&nbsp;\r\n\r\n\r\nDay 1\r\nArrive to the city&nbsp;and transfer to your hotel. Check in and spend the day at leisure.\r\n\r\nDay 2\r\nAfter breakfast, go on the Boshphorus cruise and the Spice market tour. Enjoy the traditional excursion along the waterway separating Europe and Asia. The shore is lined with old wooden villas, palaces of marble, fortresses and small fishing villages. Witness major highlights whilst sailing such as the Dolmabah&ccedil;e Palace, the parks and pavilions of the Yildiz Palace. Visit the colorful Spice Market to buy local spices and shop for souvenirs.\r\n\r\nDay 3\r\nBegin your day with a delicious breakfast and go on your city tour on seat in coach basis, the heart of the Imperial Center from where the Byzantine and Ottoman Empires once ruled. Explore the Hippodrome, a beautiful park known as the Byzantine chariot racetrack &ndash; a stadium capable of holding 100,000 people. There are three great monuments in the Hippodrome, the Egyptian Obelisk of 1500 BC, the Serpentine Column from the Temple of Apollo at Delphi and the German Fountain of Wilhelm II. Later visit the Blue Mosque, which faces Hagia Sophia and features six towering minarets and spectacular interior covered by overwhelmingly blue Iznik tiles.\r\n\r\nDay 4\r\nAfter breakfast, check out from your hotel and spend the day shopping and exploring the city on your own. In the evening, transfer to the airport and board your flight and return home with great memories of your holiday.\r\n","amenities":null,"avgReviews":{"clean":0.299999999999999988897769753748434595763683319091796875,"comfort":0.6999999999999999555910790149937383830547332763671875,"location":0.299999999999999988897769753748434595763683319091796875,"facilities":1.3000000000000000444089209850062616169452667236328125,"staff":0.299999999999999988897769753748434595763683319091796875,"totalReviews":"7","overall":5.9000000000000003552713678800500929355621337890625},"latitude":"13.7563309","longitude":"100.50176510000006","discount":"10","price":88,"currCode":"usd","inclusions":null,"tourDays":"5","tourNights":"4","tourType":"Holidays"}]
// /// featured_cars : [{"id":"11","title":"Toyota Camry 2015 full option","slug":"https://demotravels.com/api/cars/united-kingdom/kapaa/Toyota-Camry-2015-full-option","thumbnail":"https://demotravels.com/api/uploads/images/cars/slider/thumbs/732422_1.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i>","starsCount":"4","location":"Kapaa","desc":"Travel in comfort and style in this compact model. With room for 5 passengers and 4 pieces of luggage, it&#39;s ideal for families and small to medium-sized &nbsp;Travel in comfort and style in this compact model. With room for 5 passengers and 4 pieces of luggage, it&#39;s ideal for families and small to medium-sized&nbsp;Travel in comfort and style in this compact model. With room for 5 passengers and 4 pieces of luggage, it&#39;s ideal for families and small to medium-sized&nbsp;\r\n","doors":"2","passengers":"6","transmission":"Auto","airportPickup":"no","baggage":"x2","price":50,"currCode":"usd","carType":"Luxury","discount":"10","latitude":"22.0881391","longitude":"-159.33798179999997","avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"0","overall":0}},{"id":"10","title":"Opel Astra 2014","slug":"https://demotravels.com/api/cars/algeria/annaba/Opel-Astra-2014","thumbnail":"https://demotravels.com/api/uploads/images/cars/slider/thumbs/208374_2.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i>","starsCount":"4","location":"Annaba","desc":"Car Description Travel in comfort and style in this compact model. With room for 5 passengers and 4 pieces of luggage, it&#39;s ideal for families and small to medium-sized groups. Fuel consumption 62.7 m/g CO2 emission 190.0 g/km&nbsp;Car Description Travel in comfort and style in this compact model. With room for 5 passengers and 4 pieces of luggage, it&#39;s ideal for families and small to medium-sized groups. Fuel consumption 62.7 m/g CO2 emission 190.0 g/km&nbsp;Car Description Travel in comfort and style in this compact model. With room for 5 passengers and 4 pieces of luggage, it&#39;s ideal for families and small to medium-sized groups. Fuel consumption 62.7 m/g CO2 emission 190.0 g/k\r\n","doors":"2","passengers":"4","transmission":"Manual","airportPickup":"yes","baggage":"x1","price":99,"currCode":"usd","carType":"Standard","discount":null,"latitude":"36.821392","longitude":"7.811857","avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"0","overall":0}},{"id":"9","title":"Ford Mondeo 2012","slug":"https://demotravels.com/api/cars/united-arab-emirates/sharjah/Ford-Mondeo-2012","thumbnail":"https://demotravels.com/api/uploads/images/cars/slider/thumbs/65339_3.jpg","stars":"<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i>","starsCount":"6","location":"Sharjah ","desc":"With room for 5 passengers and 4 pieces of luggage, this is the perfect model for families or groups looking to arrive in style at their destination. Fuel consumption 39.2 m/g CO2 emission 171.0 g/km&nbsp;With room for 5 passengers and 4 pieces of luggage, this is the perfect model for families or groups looking to arrive in style at their destination. Fuel consumption 39.2 m/g CO2 emission 171.0 g/km&nbsp;With room for 5 passengers and 4 pieces of luggage, this is the perfect model for families or groups looking to arrive in style at their destination. Fuel consumption 39.2 m/g CO2 emission 171.0 g/km\r\n\r\n&nbsp;\r\n","doors":"2","passengers":"5","transmission":"Auto","airportPickup":"yes","baggage":"x3","price":75,"currCode":"usd","carType":"Standard","discount":"20","latitude":"25.3223269","longitude":"55.51364330000001","avgReviews":{"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"0","overall":0}}]
// /// featured_blog : [{"id":"35","title":"Virgin Gorda beaches and lobste","thumbnail":"https://demotravels.com/api/uploads/images/blog/780975_1.jpg","desc":"<p>This is the second leg of a truly fun week. There are adventures to get each morning when we land somewhere else, but also fun time on the boat itself.&nbsp;</p>\r\n\r\n<p>The Club Med 2 has an open bar. Yes, that means free flow of pretty good things...all day long. So being on a French boat, you have Ricard for aperitif at lunch time if you are on the boat at lunch time...and pina colada by the pool before sunset, and obviously wine during meals. We are in the North Hemisphere end of November, so sunsets are early at around 5.30pm each day...with some pretty cool views from the swimming pool bar on the back deck. By 6pm, it&#39;s champagne time...all night long. Well, first it&#39;s shower time and getting change for the evening obviously...this is still a French place! And as we all now that mixing different alcohol drinks is not a great idea, I found a fun group of people ready to go on the champagne all night long, each evening, for great and fun time! More in the next entries of this truly fun group of people.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Little warning, Club Med 2&nbsp;<br />\r\nClub Med 2Club Med 2<br />\r\nClub Med 2<br />\r\nis French, and it feels. Out of the 280 guests on the boat this week, I don&#39;t think a single one doesn&#39;t speak at least some French. It would be a pretty boring week if you can only speak English here...and as you may be aware...French people living in France suck when it comes to speak something else than French. You&#39;ve been honestly warned!&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>So this morning, it&#39;s BVI time. No I&#39;m not coming for business here. And BVI doesn&#39;t only stand for offshore companies...it does too stand for gorgeous beaches, yachts, and British Virgin Islands. We have sailed all night long from Dominica...Dominica is Commonwealth and poor....BVI is British Territory and pretty wealthy.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I spent my day with Thierry....same age as me, and ready to have some fun this week. Because at the end of the day we know you don&#39;t find single ladies in their thirties on these cruises...we knew we would need to get organized to do something else than read our books! Didn&#39;t do my homework about Virgin Gorda. I kew the diving was average, and that the cruise had a BBQ lunch of lobster organized for us on the&nbsp;<br />\r\nLobster time...Lobster time...<br />\r\nLobster time...<br />\r\nbeach! So we took a &quot;beacher&quot; with the intention to simply go on the beach for the morning.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There was a shuttle to &quot;a&quot; beach rented for the morning by Club Med. We set next to the rasta driver...yeah man...and he dropped us on the way. That was off-plan, completely out of the blue! It was time for us to go explore the National Park of &quot;The Baths&quot;. This is some kind of a National Park...it is a series of beaches separated by granite rocks. I first felt in the Seychelles...before finding myself rather in some kind of adventure hike for teenagers ready to have some serious fun. Wow, that place is amazing!&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We spent the all morning going from beach to beach and climbing those huge rocks...even getting lost on deserted beaches as wandering if we were only on the right trail. The water was beautiful and warm....the yachts were around, it was just plain full fun...simple!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We made our way back to the Club Med beach, just on time for the last shuttle. Good idea, as we had no idea where the BBQ was, and the ride back to&nbsp;<br />\r\nLittle pina colada by the pool...Little pina colada by the pool...<br />\r\nLittle pina colada by the pool...<br />\r\nthe landing point of the cruise was quite a walk away. Lobster BBQ! That simply cannot be bad just by the way it sounds. It was another of these...free flow of rose wine...of salad, and yes, of lobster too! The sun was there, at the end of the lunch...our faces ended the same color as the lobsters on the grill....but one more time...fun it was!&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Back on the boat before the crowds for a good nap and some swimming pool time. Not that 280 guests makes you feel crowded on such a huge sail boat...but queueing is simply really not our thing.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Another really fun night was awaiting us...and a short sail to the land of Uncle Sam...or pretty close to this actually, for another fun adventure...on which I will have to write pretty soon!</p>\r\n\r\n<p>&nbsp;</p>","shortDesc":"This is the second leg of a truly fun week. There are adventures to get each morning when we land somewhere else, but also fun time on the boat itself.&nbsp;\r\n\r\nThe Club Med 2 has an open bar. Yes, that means free flow of pretty good things...all day long. So being on a French boat, you have Ricard for aperitif at lunch time if you are on the boat at lunch time...and pina colada by the pool before sunset, and obviously wine during meals. We are in the North Hemisphere end of November, so sunsets are early at around 5.30pm each day...with some pretty cool views from the swimming pool bar on the back deck. By 6pm, it&#39;s champagne time...all night long. Well, first it&#39;s shower time and getting change for the evening obviously...this is still a French place! And as we all now that mixing different alcohol drinks is not a great idea, I found a fun group of people ready to go on the champagne all night long, each evening, for great and fun time! More in the next entries of this truly fun group of people.&nbsp;\r\n\r\n&nbsp;\r\n\r\nLittle warning, Club Med 2&nbsp;\r\nClub Med 2Club Med 2\r\nClub Med 2\r\nis French, and it feels. Out of the 280 guests on the boat this week, I don&#39;t think a single one doesn&#39;t speak at least some French. It would be a pretty boring week if you can only speak English here...and as you may be aware...French people living in France suck when it comes to speak something else than French. You&#39;ve been honestly warned!&nbsp;\r\n\r\n&nbsp;\r\n\r\nSo this morning, it&#39;s BVI time. No I&#39;m not coming for business here. And BVI doesn&#39;t only stand for offshore companies...it does too stand for gorgeous beaches, yachts, and British Virgin Islands. We have sailed all night long from Dominica...Dominica is Commonwealth and poor....BVI is British Territory and pretty wealthy.&nbsp;\r\n\r\n&nbsp;\r\n\r\nI spent my day with Thierry....same age as me, and ready to have some fun this week. Because at the end of the day we know you don&#39;t find single ladies in their thirties on these cruises...we knew we would need to get organized to do something else than read our books! Didn&#39;t do my homework about Virgin Gorda. I kew the diving was average, and that the cruise had a BBQ lunch of lobster organized for us on the&nbsp;\r\nLobster time...Lobster time...\r\nLobster time...\r\nbeach! So we took a &quot;beacher&quot; with the intention to simply go on the beach for the morning.&nbsp;\r\n\r\n&nbsp;\r\n\r\nThere was a shuttle to &quot;a&quot; beach rented for the morning by Club Med. We set next to the rasta driver...yeah man...and he dropped us on the way. That was off-plan, completely out of the blue! It was time for us to go explore the National Park of &quot;The Baths&quot;. This is some kind of a National Park...it is a series of beaches separated by granite rocks. I first felt in the Seychelles...before finding myself rather in some kind of adventure hike for teenagers ready to have some serious fun. Wow, that place is amazing!&nbsp;\r\n\r\n&nbsp;\r\n\r\nWe spent the all morning going from beach to beach and climbing those huge rocks...even getting lost on deserted beaches as wandering if we were only on the right trail. The water was beautiful and warm....the yachts were around, it was just plain full fun...simple!\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nWe made our way back to the Club Med beach, just on time for the last shuttle. Good idea, as we had no idea where the BBQ was, and the ride back to&nbsp;\r\nLittle pina colada by the pool...Little pina colada by the pool...\r\nLittle pina colada by the pool...\r\nthe landing point of the cruise was quite a walk away. Lobster BBQ! That simply cannot be bad just by the way it sounds. It was another of these...free flow of rose wine...of salad, and yes, of lobster too! The sun was there, at the end of the lunch...our faces ended the same color as the lobsters on the grill....but one more time...fun it was!&nbsp;\r\n\r\n&nbsp;\r\n\r\nBack on the boat before the crowds for a good nap and some swimming pool time. Not that 280 guests makes you feel crowded on such a huge sail boat...but queueing is simply really not our thing.&nbsp;\r\n\r\n&nbsp;\r\n\r\nAnother really fun night was awaiting us...and a short sail to the land of Uncle Sam...or pretty close to this actually, for another fun adventure...on which I will have to write pretty soon!\r\n\r\n&nbsp;","slug":"https://demotravels.com/api/blog/Virgin-Gorda-beaches-and-lobste"},{"id":"34","title":"Fiercely Independent Cultures","thumbnail":"https://demotravels.com/api/uploads/images/blog/696228_2.jpg","desc":"<p>In a world that is increasingly homogenous, fiercely independent cultures and places are especially intriguing. Likely a result of it&#39;s geographical isolation from both mainland Europe and North America, Iceland has always taken it&#39;s own unique path. Icelandic architecture and fashion is a reflection of it&#39;s unusual geography, the Icelandic palette is most comfortable when quality local ingredients are cured, cultured, fermented, or pickled, and the Icelandic people revel in self sufficiency and environmental sustainability. Iceland has always been deeply rooted in nordic liberal sensibilities, but unlike any other nation, they refused to bail out their banks after the 2008 recession, in 2009 they elected the world&#39;s first openly gay female prime minister and in 2010, Reykjavik elected John Gnarr, punk rock singer, comedian, and self proclaimed anarchist as their mayor. The physical landscape is as striking and unique as the culture itself; an island covered in black volcanic rock, lush green fields, geothermal vents and dramatic volcanoes. It was with this in mind, that Dennie, Henry and I boarded a plane for Reykjavik over Easter holidays, where we would spend 9 days swimming in hot pools, driving through fjords, and eating delicious Skyr (Icelandic yogurt).&nbsp;</p>\r\n\r\n<p>Iceland is expensive. As&nbsp;<br />\r\nHiking near Eyjafjallaj&ouml;kullHiking near Eyjafjallaj&ouml;kull<br />\r\nHiking near Eyjafjallaj&ouml;kull<br />\r\na way to mitigate the costs our plan involved renting an old, rusty but mainly reliable car from Sadcar (a 2002 Yaris with 280,000 Kms), cooking 2 out of 3 meals a day at our rental apartment with Bonus brand groceries and doing as little shopping as possible. Upon walking through customs I began to have some minor reservations about our plan to be budget oriented when we were greeted by what I assume is one out of the two Sadcar employees who took us to a quonset in a field 10 minutes from the airport. When we inquired about a carseat for Henry, they directed us to the back of the auto body shop/rental car graveyard where 3 very used and slightly broken carseats sat amongst mufflers and cooling fluids. Dennie chose the most functional of the lot, we loaded into our Sadcar and took off towards Reykjavik through a minor snow storm.&nbsp;</p>\r\n\r\n<p>Our little Ikea apartment was perfectly located down the street from Hallgrimskirka, the spired Lutheran church that provides a compass for travellers exploring the city. This was a great location to have as home base, as most of our mornings were spent wondering the streets&nbsp;<br />\r\nHank and I inside the HarpaHank and I inside the Harpa<br />\r\nHank and I inside the Harpa<br />\r\nof the old town where colorful terraced houses with main floor commercial space provide a vibrant and walkable downtown dotted with record shops with comfy couches and free espresso (12 Tonar), Icelandic design and furniture stores, vegetarian cafes, pubs, clubs and curry houses. We visited all three locations of the Reykjavik Art Museum (Hafnarhus, Kjarvalsstadir, Asmundarsafn) where the post modern works of Erro and the cubist and abstract landscape paintings of Kjarval hang next to rotating exhibits from contemporary Icelandic artists. We stumbled upon an Easter egg hunt in the Einar Jonsson Sculpture Park, played cards in the sprawling lounges inside The Harpa, and took in the Reykjavik Museum of Photography (inside the public library), the Viking Saga Museum, the Reykjavik Children&#39;s Park and &quot;zoo&quot; (more of a petting zoo) and took the elevator to the observatory at The Pearl. The city is surprisingly cosmopolitan yet retains a small town hospitality that acts as a reminder that there are only 120,000 people within city limits.&nbsp;</p>\r\n\r\n<p>Despite the high cost of bars and restaurants in Reykjavik&#39;s centre we managed to find a number of reasonably priced eateries serving delicious and fresh food. Here are some of our recommendations: Babalu (grilled&nbsp;<br />\r\nEaster Egg Hunt in Einar J&oacute;nsson Sculpture GardenEaster Egg Hunt in Einar J&oacute;nsson Sculpture Garden<br />\r\nEaster Egg Hunt in Einar J&oacute;nsson Sculpture Garden<br />\r\nHallgr&iacute;mskirkja in the background.<br />\r\ncheese and tomato soup), C is for Cookie (homemade soup and sandwiches with great cheesecake), Laundromat Cafe (lake trout with root vegetables was outstanding and the children&#39;s play area in the basement is something to behold!), Austur India Fjelagid (delicious vegetarian Thali), Graen Kostur (Eastern inspired fusion veggie food with two lunch options daily). For drinks, Microbar has a lot of local craft beers on tap (Happy Hour from 5-8 pm). The Labowski Bar also seemed like an amazing place but they were having pub trivia when we walked in so we didn&#39;t stay for a drink.&nbsp;</p>\r\n\r\n<p>Our Sadcar managed a number of day trips from Reykjavik; we drove north through the Hvalfjorour (Whale Fjord), stopping for a picnic near some rapids. We drove to the geothermal town of Hverager&eth;i and onto the famed Eyjafjallajokull volcano which erupted in 2010 causing flight cancellations across Europe. We drove the Golden Circle with stops at Geyser, Pingvellir National Park and the Gulfoss waterfall. Once you leave Reykjavik the geography is stark but majestic with green fields punctuated with black volcanic rock, rolling hills, steep mountain passes and steam rising into the air from thermal vents dotting the landscape throughout.&nbsp;</p>\r\n\r\n<p>Dennie&nbsp;<br />\r\nOutside of the Blue LagoonOutside of the Blue Lagoon<br />\r\nOutside of the Blue Lagoon<br />\r\nand I have fast come to the realization that when travelling with a baby, the experience is more fun for all if all planning revolves around the baby. And while Reykjavik&#39;s legendary nightlife may have called my name once or twice, parenting with a hangover certainly did not. As such, we spent a good deal of our time in Iceland immersing ourselves into the thermal pool culture. With 122 thermal pools and 17 in Reykjavik alone, we made it our mission to swim in a new pool each day. In Reykjavik we swam at Laugardalslaug, Sundhollin, Arbaejarlaug, Grafarvogslaug, Sudurbaejarlaug, and Asvallalaug. During our day trips around the Icelandic country side we also had the opportunity to swim at the beautiful pool at Hverageroi, naked in the deserted Seljallalaug located in a mountain valley surrounded by waterfalls, and on our last day at expensive but amazing Blue Lagoon. 9 pools in 9 days. The water in all public pools is chemical free, heated through geothermal, and nearly all have a number of &quot;hot pots&quot;, saunas, lanes for swimming, kids pools, and water-slides. I got the impression from my time sitting in &quot;hot pots&quot; chatting with locals that thermal pools are important&nbsp;<br />\r\nEnroute to the Seljvavellir hot pool Enroute to the Seljvavellir hot pool&nbsp;<br />\r\nEnroute to the Seljvavellir hot pool<br />\r\ngathering places for members of the community. Old and young alike move between the various pools and openly converse with strangers and friends. In moments where Henry was grumpy or tired we always knew we were within a few minutes from a pool where he would immediately be transformed back into the smiling Hank we have become used to. While the pools certainly made travelling in Iceland with a baby much easier, it is the Icelandic people who really make Iceland a child friendly locale. Almost every restaurant we went to had a children&#39;s play area, there was signage that encouraged breastfeeding, and all bars and pubs allow children. Icelandic people were warm and outgoing but not loud or obnoxious and no matter where we went, it seemed they had thought about ways to welcome children.&nbsp;</p>\r\n\r\n<p>On our final morning in Iceland, I walked down the street from our apartment to pick up a couple cd&#39;s at Tonar 12. I sat on their comfy couches listening to FM Belfast and Seabear while Henry rummaged through the stacks. Without asking, the man running the shop brought me an espresso. I picked up a Reykjavik guidebook from a coffee table and&nbsp;<br />\r\nDennie driving our Sad CarDennie driving our Sad Car<br />\r\nDennie driving our Sad Car<br />\r\nopened the book to the first page to read the mayor&#39;s welcome message for visitors. Jon Gnarr (the mayor) foretold his version of the country&#39;s origin. I read,&nbsp;</p>\r\n\r\n<p>&quot;But how can it be that such a warm country came to possess such a frigid name? Yes, the explanation is simple: MISUNDERSTANDING. Ing&oacute;lfur Arnarson, the first man that found Reykjav&iacute;k, wasn&rsquo;t on his way here at all. He was en route to the United States of America, to buy grapes and other fast food that grew wild there in those days. He was very interested in food. And also homicide. On his way he noticed a cloud of smoke ascending to the heavens from an unknown country. His curious nature got the best of him, and he changed his course and set sail to Reykjav&iacute;k (Reykjav&iacute;k literally means &ldquo;smoky bay&rdquo;!).&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As he disembarked his ship, he saw that the smoke was in fact steam rising from Reykjav&iacute;k&rsquo;s many swimming pools. He was therefore quick in tearing off the suit of armour that he had worn in case he&rsquo;d encounter some Native Americans while picking grapes, and jumping into some swim trunks. After swimming a good&nbsp;<br />\r\nHank test driving Indie music at Tonar 12 in ReykjavikHank test driving Indie music at Tonar 12 in Reykjavik<br />\r\nHank test driving Indie music at Tonar 12 in Reykjavik<br />\r\n500 metres he sat in the hot tub and relaxed. After a fun chat with the locals he had forgotten all about America. Who needs to travel all the way to America to pick grapes when there&rsquo;s a shop on Laugavegur called V&iacute;nberi&eth; (V&iacute;nberi&eth; literally means: &ldquo;the grape&rdquo;)? Ing&oacute;lfur decided to settle here. He rented a small apartment along with his wife, Hallveig Fr&oacute;&eth;ad&oacute;ttir, who many claim was the daughter of Frodo from &lsquo;Lord Of The Rings&rsquo;. Nothing has been proven about that, however.</p>\r\n\r\n<p>One day Ing&oacute;lfur and Hallveig were taking a stroll around town. They were walking their dog, who was called Pl&uacute;t&oacute; and was a Great Dane. It was a sizzling hot summer&rsquo;s day. It was long before the t-shirt was invented. They were both dressed in full suits of armour, with swords and shields and helmets and everything. They stopped by at &Iacute;sb&uacute;&eth; Vesturb&aelig;jar in Hagamelur to get some ice cream and cool down. The story goes that Ing&oacute;lfur asked the clerk whether she knew what the country was called.&nbsp;</p>\r\n\r\n<p>She thought it was called Thule. Ing&oacute;lfur felt that was a stupid name.&nbsp;</p>\r\n\r\n<p>&ldquo;No country can be called Thule&rdquo;, he said.&nbsp;</p>\r\n\r\n<p>Outside the&nbsp;<br />\r\nHenry inside the eyjafjallajokull theatreHenry inside the eyjafjallajokull theatre<br />\r\nHenry inside the eyjafjallajokull theatre<br />\r\nice cream shop, a crowd had gathered. They had heard that foreign visitors were in town. A lot of those people were elves. Ing&oacute;lfur then approached the crowd, raised his ice cream cone aloft and shouted:&nbsp;</p>\r\n\r\n<p>&ldquo;Henceforth this country will be called Iceland, because one can get the world&rsquo;s best ice cream here!&rdquo;.&nbsp;</p>\r\n\r\n<p>Today we have a statue of Ing&oacute;lfur. The statue depicts Ing&oacute;lfur dying of heat, leaning on his dog.&nbsp;</p>\r\n\r\n<p>Don&rsquo;t be a stranger, be like Ing&oacute;lfur! &quot;&nbsp;</p>\r\n\r\n<p>Only in Iceland!&nbsp;</p>","shortDesc":"In a world that is increasingly homogenous, fiercely independent cultures and places are especially intriguing. Likely a result of it&#39;s geographical isolation from both mainland Europe and North America, Iceland has always taken it&#39;s own unique path. Icelandic architecture and fashion is a reflection of it&#39;s unusual geography, the Icelandic palette is most comfortable when quality local ingredients are cured, cultured, fermented, or pickled, and the Icelandic people revel in self sufficiency and environmental sustainability. Iceland has always been deeply rooted in nordic liberal sensibilities, but unlike any other nation, they refused to bail out their banks after the 2008 recession, in 2009 they elected the world&#39;s first openly gay female prime minister and in 2010, Reykjavik elected John Gnarr, punk rock singer, comedian, and self proclaimed anarchist as their mayor. The physical landscape is as striking and unique as the culture itself; an island covered in black volcanic rock, lush green fields, geothermal vents and dramatic volcanoes. It was with this in mind, that Dennie, Henry and I boarded a plane for Reykjavik over Easter holidays, where we would spend 9 days swimming in hot pools, driving through fjords, and eating delicious Skyr (Icelandic yogurt).&nbsp;\r\n\r\nIceland is expensive. As&nbsp;\r\nHiking near Eyjafjallaj&ouml;kullHiking near Eyjafjallaj&ouml;kull\r\nHiking near Eyjafjallaj&ouml;kull\r\na way to mitigate the costs our plan involved renting an old, rusty but mainly reliable car from Sadcar (a 2002 Yaris with 280,000 Kms), cooking 2 out of 3 meals a day at our rental apartment with Bonus brand groceries and doing as little shopping as possible. Upon walking through customs I began to have some minor reservations about our plan to be budget oriented when we were greeted by what I assume is one out of the two Sadcar employees who took us to a quonset in a field 10 minutes from the airport. When we inquired about a carseat for Henry, they directed us to the back of the auto body shop/rental car graveyard where 3 very used and slightly broken carseats sat amongst mufflers and cooling fluids. Dennie chose the most functional of the lot, we loaded into our Sadcar and took off towards Reykjavik through a minor snow storm.&nbsp;\r\n\r\nOur little Ikea apartment was perfectly located down the street from Hallgrimskirka, the spired Lutheran church that provides a compass for travellers exploring the city. This was a great location to have as home base, as most of our mornings were spent wondering the streets&nbsp;\r\nHank and I inside the HarpaHank and I inside the Harpa\r\nHank and I inside the Harpa\r\nof the old town where colorful terraced houses with main floor commercial space provide a vibrant and walkable downtown dotted with record shops with comfy couches and free espresso (12 Tonar), Icelandic design and furniture stores, vegetarian cafes, pubs, clubs and curry houses. We visited all three locations of the Reykjavik Art Museum (Hafnarhus, Kjarvalsstadir, Asmundarsafn) where the post modern works of Erro and the cubist and abstract landscape paintings of Kjarval hang next to rotating exhibits from contemporary Icelandic artists. We stumbled upon an Easter egg hunt in the Einar Jonsson Sculpture Park, played cards in the sprawling lounges inside The Harpa, and took in the Reykjavik Museum of Photography (inside the public library), the Viking Saga Museum, the Reykjavik Children&#39;s Park and &quot;zoo&quot; (more of a petting zoo) and took the elevator to the observatory at The Pearl. The city is surprisingly cosmopolitan yet retains a small town hospitality that acts as a reminder that there are only 120,000 people within city limits.&nbsp;\r\n\r\nDespite the high cost of bars and restaurants in Reykjavik&#39;s centre we managed to find a number of reasonably priced eateries serving delicious and fresh food. Here are some of our recommendations: Babalu (grilled&nbsp;\r\nEaster Egg Hunt in Einar J&oacute;nsson Sculpture GardenEaster Egg Hunt in Einar J&oacute;nsson Sculpture Garden\r\nEaster Egg Hunt in Einar J&oacute;nsson Sculpture Garden\r\nHallgr&iacute;mskirkja in the background.\r\ncheese and tomato soup), C is for Cookie (homemade soup and sandwiches with great cheesecake), Laundromat Cafe (lake trout with root vegetables was outstanding and the children&#39;s play area in the basement is something to behold!), Austur India Fjelagid (delicious vegetarian Thali), Graen Kostur (Eastern inspired fusion veggie food with two lunch options daily). For drinks, Microbar has a lot of local craft beers on tap (Happy Hour from 5-8 pm). The Labowski Bar also seemed like an amazing place but they were having pub trivia when we walked in so we didn&#39;t stay for a drink.&nbsp;\r\n\r\nOur Sadcar managed a number of day trips from Reykjavik; we drove north through the Hvalfjorour (Whale Fjord), stopping for a picnic near some rapids. We drove to the geothermal town of Hverager&eth;i and onto the famed Eyjafjallajokull volcano which erupted in 2010 causing flight cancellations across Europe. We drove the Golden Circle with stops at Geyser, Pingvellir National Park and the Gulfoss waterfall. Once you leave Reykjavik the geography is stark but majestic with green fields punctuated with black volcanic rock, rolling hills, steep mountain passes and steam rising into the air from thermal vents dotting the landscape throughout.&nbsp;\r\n\r\nDennie&nbsp;\r\nOutside of the Blue LagoonOutside of the Blue Lagoon\r\nOutside of the Blue Lagoon\r\nand I have fast come to the realization that when travelling with a baby, the experience is more fun for all if all planning revolves around the baby. And while Reykjavik&#39;s legendary nightlife may have called my name once or twice, parenting with a hangover certainly did not. As such, we spent a good deal of our time in Iceland immersing ourselves into the thermal pool culture. With 122 thermal pools and 17 in Reykjavik alone, we made it our mission to swim in a new pool each day. In Reykjavik we swam at Laugardalslaug, Sundhollin, Arbaejarlaug, Grafarvogslaug, Sudurbaejarlaug, and Asvallalaug. During our day trips around the Icelandic country side we also had the opportunity to swim at the beautiful pool at Hverageroi, naked in the deserted Seljallalaug located in a mountain valley surrounded by waterfalls, and on our last day at expensive but amazing Blue Lagoon. 9 pools in 9 days. The water in all public pools is chemical free, heated through geothermal, and nearly all have a number of &quot;hot pots&quot;, saunas, lanes for swimming, kids pools, and water-slides. I got the impression from my time sitting in &quot;hot pots&quot; chatting with locals that thermal pools are important&nbsp;\r\nEnroute to the Seljvavellir hot pool Enroute to the Seljvavellir hot pool&nbsp;\r\nEnroute to the Seljvavellir hot pool\r\ngathering places for members of the community. Old and young alike move between the various pools and openly converse with strangers and friends. In moments where Henry was grumpy or tired we always knew we were within a few minutes from a pool where he would immediately be transformed back into the smiling Hank we have become used to. While the pools certainly made travelling in Iceland with a baby much easier, it is the Icelandic people who really make Iceland a child friendly locale. Almost every restaurant we went to had a children&#39;s play area, there was signage that encouraged breastfeeding, and all bars and pubs allow children. Icelandic people were warm and outgoing but not loud or obnoxious and no matter where we went, it seemed they had thought about ways to welcome children.&nbsp;\r\n\r\nOn our final morning in Iceland, I walked down the street from our apartment to pick up a couple cd&#39;s at Tonar 12. I sat on their comfy couches listening to FM Belfast and Seabear while Henry rummaged through the stacks. Without asking, the man running the shop brought me an espresso. I picked up a Reykjavik guidebook from a coffee table and&nbsp;\r\nDennie driving our Sad CarDennie driving our Sad Car\r\nDennie driving our Sad Car\r\nopened the book to the first page to read the mayor&#39;s welcome message for visitors. Jon Gnarr (the mayor) foretold his version of the country&#39;s origin. I read,&nbsp;\r\n\r\n&quot;But how can it be that such a warm country came to possess such a frigid name? Yes, the explanation is simple: MISUNDERSTANDING. Ing&oacute;lfur Arnarson, the first man that found Reykjav&iacute;k, wasn&rsquo;t on his way here at all. He was en route to the United States of America, to buy grapes and other fast food that grew wild there in those days. He was very interested in food. And also homicide. On his way he noticed a cloud of smoke ascending to the heavens from an unknown country. His curious nature got the best of him, and he changed his course and set sail to Reykjav&iacute;k (Reykjav&iacute;k literally means &ldquo;smoky bay&rdquo;!).&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nAs he disembarked his ship, he saw that the smoke was in fact steam rising from Reykjav&iacute;k&rsquo;s many swimming pools. He was therefore quick in tearing off the suit of armour that he had worn in case he&rsquo;d encounter some Native Americans while picking grapes, and jumping into some swim trunks. After swimming a good&nbsp;\r\nHank test driving Indie music at Tonar 12 in ReykjavikHank test driving Indie music at Tonar 12 in Reykjavik\r\nHank test driving Indie music at Tonar 12 in Reykjavik\r\n500 metres he sat in the hot tub and relaxed. After a fun chat with the locals he had forgotten all about America. Who needs to travel all the way to America to pick grapes when there&rsquo;s a shop on Laugavegur called V&iacute;nberi&eth; (V&iacute;nberi&eth; literally means: &ldquo;the grape&rdquo;)? Ing&oacute;lfur decided to settle here. He rented a small apartment along with his wife, Hallveig Fr&oacute;&eth;ad&oacute;ttir, who many claim was the daughter of Frodo from &lsquo;Lord Of The Rings&rsquo;. Nothing has been proven about that, however.\r\n\r\nOne day Ing&oacute;lfur and Hallveig were taking a stroll around town. They were walking their dog, who was called Pl&uacute;t&oacute; and was a Great Dane. It was a sizzling hot summer&rsquo;s day. It was long before the t-shirt was invented. They were both dressed in full suits of armour, with swords and shields and helmets and everything. They stopped by at &Iacute;sb&uacute;&eth; Vesturb&aelig;jar in Hagamelur to get some ice cream and cool down. The story goes that Ing&oacute;lfur asked the clerk whether she knew what the country was called.&nbsp;\r\n\r\nShe thought it was called Thule. Ing&oacute;lfur felt that was a stupid name.&nbsp;\r\n\r\n&ldquo;No country can be called Thule&rdquo;, he said.&nbsp;\r\n\r\nOutside the&nbsp;\r\nHenry inside the eyjafjallajokull theatreHenry inside the eyjafjallajokull theatre\r\nHenry inside the eyjafjallajokull theatre\r\nice cream shop, a crowd had gathered. They had heard that foreign visitors were in town. A lot of those people were elves. Ing&oacute;lfur then approached the crowd, raised his ice cream cone aloft and shouted:&nbsp;\r\n\r\n&ldquo;Henceforth this country will be called Iceland, because one can get the world&rsquo;s best ice cream here!&rdquo;.&nbsp;\r\n\r\nToday we have a statue of Ing&oacute;lfur. The statue depicts Ing&oacute;lfur dying of heat, leaning on his dog.&nbsp;\r\n\r\nDon&rsquo;t be a stranger, be like Ing&oacute;lfur! &quot;&nbsp;\r\n\r\nOnly in Iceland!&nbsp;","slug":"https://demotravels.com/api/blog/Fiercely-Independent-Cultures"},{"id":"33","title":"Peace Train A Long Time Coming","thumbnail":"https://demotravels.com/api/uploads/images/blog/120331_3.jpg","desc":"<p>&nbsp;mainland Europe and North America, Iceland has always taken it&#39;s own unique path. Icelandic architecture and fashion is a reflection of it&#39;s unusual geography, the Icelandic palette is most comfortable when quality local ingredients are cured, cultured, fermented, or pickled, and the Icelandic people revel in self sufficiency and environmental sustainability. Iceland has always been deeply rooted in nordic liberal sensibilities, but unlike any other nation, they refused to bail out their banks after the 2008 recession, in 2009 they elected the world&#39;s first openly gay female prime minister and in 2010, Reykjavik elected John Gnarr, punk rock singer, comedian, and self proclaimed anarchist as their mayor. The physical landscape is as striking and unique as the culture itself; an island covered in black volcanic rock, lush green fields, geothermal vents and dramatic volcanoes. It was with this in mind, that Dennie, Henry and I boarded a plane for Reykjavik over Easter holidays, where we would spend 9 days swimming in hot pools, driving through fjords, and eating delicious Skyr (Icelandic yogurt).&nbsp;</p>\r\n\r\n<p>Iceland is expensive. As&nbsp;<br />\r\nHiking near Eyjafjallaj&ouml;kullHiking near Eyjafjallaj&ouml;kull<br />\r\nHiking near Eyjafjallaj&ouml;kullIn a world that is increasingly homogenous, fiercely independent cultures and places are especially intriguing. Likely a result of it&#39;s geographical isolation from both<br />\r\na way to mitigate the costs our plan involved renting an old, rusty but mainly reliable car from Sadcar (a 2002 Yaris with 280,000 Kms), cooking 2 out of 3 meals a day at our rental apartment with Bonus brand groceries and doing as little shopping as possible. Upon walking through customs I began to have some minor reservations about our plan to be budget oriented when we were greeted by what I assume is one out of the two Sadcar employees who took us to a quonset in a field 10 minutes from the airport. When we inquired about a carseat for Henry, they directed us to the back of the auto body shop/rental car graveyard where 3 very used and slightly broken carseats sat amongst mufflers and cooling fluids. Dennie chose the most functional of the lot, we loaded into our Sadcar and took off towards Reykjavik through a minor snow storm.&nbsp;</p>\r\n\r\n<p>Our little Ikea apartment was perfectly located down the street from Hallgrimskirka, the spired Lutheran church that provides a compass for travellers exploring the city. This was a great location to have as home base, as most of our mornings were spent wondering the streets&nbsp;<br />\r\nHank and I inside the HarpaHank and I inside the Harpa<br />\r\nHank and I inside the Harpa<br />\r\nof the old town where colorful terraced houses with main floor commercial space provide a vibrant and walkable downtown dotted with record shops with comfy couches and free espresso (12 Tonar), Icelandic design and furniture stores, vegetarian cafes, pubs, clubs and curry houses. We visited all three locations of the Reykjavik Art Museum (Hafnarhus, Kjarvalsstadir, Asmundarsafn) where the post modern works of Erro and the cubist and abstract landscape paintings of Kjarval hang next to rotating exhibits from contemporary Icelandic artists. We stumbled upon an Easter egg hunt in the Einar Jonsson Sculpture Park, played cards in the sprawling lounges inside The Harpa, and took in the Reykjavik Museum of Photography (inside the public library), the Viking Saga Museum, the Reykjavik Children&#39;s Park and &quot;zoo&quot; (more of a petting zoo) and took the elevator to the observatory at The Pearl. The city is surprisingly cosmopolitan yet retains a small town hospitality that acts as a reminder that there are only 120,000 people within city limits.&nbsp;</p>\r\n\r\n<p>Despite the high cost of bars and restaurants in Reykjavik&#39;s centre we managed to find a number of reasonably priced eateries serving delicious and fresh food. Here are some of our recommendations: Babalu (grilled&nbsp;<br />\r\nEaster Egg Hunt in Einar J&oacute;nsson Sculpture GardenEaster Egg Hunt in Einar J&oacute;nsson Sculpture Garden<br />\r\nEaster Egg Hunt in Einar J&oacute;nsson Sculpture Garden<br />\r\nHallgr&iacute;mskirkja in the background.<br />\r\ncheese and tomato soup), C is for Cookie (homemade soup and sandwiches with great cheesecake), Laundromat Cafe (lake trout with root vegetables was outstanding and the children&#39;s play area in the basement is something to behold!), Austur India Fjelagid (delicious vegetarian Thali), Graen Kostur (Eastern inspired fusion veggie food with two lunch options daily). For drinks, Microbar has a lot of local craft beers on tap (Happy Hour from 5-8 pm). The Labowski Bar also seemed like an amazing place but they were having pub trivia when we walked in so we didn&#39;t stay for a drink.&nbsp;</p>\r\n\r\n<p>Our Sadcar managed a number of day trips from Reykjavik; we drove north through the Hvalfjorour (Whale Fjord), stopping for a picnic near some rapids. We drove to the geothermal town of Hverager&eth;i and onto the famed Eyjafjallajokull volcano which erupted in 2010 causing flight cancellations across Europe. We drove the Golden Circle with stops at Geyser, Pingvellir National Park and the Gulfoss waterfall. Once you leave Reykjavik the geography is stark but majestic with green fields punctuated with black volcanic rock, rolling hills, steep mountain passes and steam rising into the air from thermal vents dotting the landscape throughout.&nbsp;</p>\r\n\r\n<p>Dennie&nbsp;<br />\r\nOutside of the Blue LagoonOutside of the Blue Lagoon<br />\r\nOutside of the Blue Lagoon<br />\r\nand I have fast come to the realization that when travelling with a baby, the experience is more fun for all if all planning revolves around the baby. And while Reykjavik&#39;s legendary nightlife may have called my name once or twice, parenting with a hangover certainly did not. As such, we spent a good deal of our time in Iceland immersing ourselves into the thermal pool culture. With 122 thermal pools and 17 in Reykjavik alone, we made it our mission to swim in a new pool each day. In Reykjavik we swam at Laugardalslaug, Sundhollin, Arbaejarlaug, Grafarvogslaug, Sudurbaejarlaug, and Asvallalaug. During our day trips around the Icelandic country side we also had the opportunity to swim at the beautiful pool at Hverageroi, naked in the deserted Seljallalaug located in a mountain valley surrounded by waterfalls, and on our last day at expensive but amazing Blue Lagoon. 9 pools in 9 days. The water in all public pools is chemical free, heated through geothermal, and nearly all have a number of &quot;hot pots&quot;, saunas, lanes for swimming, kids pools, and water-slides. I got the impression from my time sitting in &quot;hot pots&quot; chatting with locals that thermal pools are important&nbsp;<br />\r\nEnroute to the Seljvavellir hot pool Enroute to the Seljvavellir hot pool&nbsp;<br />\r\nEnroute to the Seljvavellir hot pool<br />\r\ngathering places for members of the community. Old and young alike move between the various pools and openly converse with strangers and friends. In moments where Henry was grumpy or tired we always knew we were within a few minutes from a pool where he would immediately be transformed back into the smiling Hank we have become used to. While the pools certainly made travelling in Iceland with a baby much easier, it is the Icelandic people who really make Iceland a child friendly locale. Almost every restaurant we went to had a children&#39;s play area, there was signage that encouraged breastfeeding, and all bars and pubs allow children. Icelandic people were warm and outgoing but not loud or obnoxious and no matter where we went, it seemed they had thought about ways to welcome children.&nbsp;</p>\r\n\r\n<p>On our final morning in Iceland, I walked down the street from our apartment to pick up a couple cd&#39;s at Tonar 12. I sat on their comfy couches listening to FM Belfast and Seabear while Henry rummaged through the stacks. Without asking, the man running the shop brought me an espresso. I picked up a Reykjavik guidebook from a coffee table and&nbsp;<br />\r\nDennie driving our Sad CarDennie driving our Sad Car<br />\r\nDennie driving our Sad Car<br />\r\nopened the book to the first page to read the mayor&#39;s welcome message for visitors. Jon Gnarr (the mayor) foretold his version of the country&#39;s origin. I read,&nbsp;</p>\r\n\r\n<p>&quot;But how can it be that such a warm country came to possess such a frigid name? Yes, the explanation is simple: MISUNDERSTANDING. Ing&oacute;lfur Arnarson, the first man that found Reykjav&iacute;k, wasn&rsquo;t on his way here at all. He was en route to the United States of America, to buy grapes and other fast food that grew wild there in those days. He was very interested in food. And also homicide. On his way he noticed a cloud of smoke ascending to the heavens from an unknown country. His curious nature got the best of him, and he changed his course and set sail to Reykjav&iacute;k (Reykjav&iacute;k literally means &ldquo;smoky bay&rdquo;!).&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As he disembarked his ship, he saw that the smoke was in fact steam rising from Reykjav&iacute;k&rsquo;s many swimming pools. He was therefore quick in tearing off the suit of armour that he had worn in case he&rsquo;d encounter some Native Americans while picking grapes, and jumping into some swim trunks. After swimming a good&nbsp;<br />\r\nHank test driving Indie music at Tonar 12 in ReykjavikHank test driving Indie music at Tonar 12 in Reykjavik<br />\r\nHank test driving Indie music at Tonar 12 in Reykjavik<br />\r\n500 metres he sat in the hot tub and relaxed. After a fun chat with the locals he had forgotten all about America. Who needs to travel all the way to America to pick grapes when there&rsquo;s a shop on Laugavegur called V&iacute;nberi&eth; (V&iacute;nberi&eth; literally means: &ldquo;the grape&rdquo;)? Ing&oacute;lfur decided to settle here. He rented a small apartment along with his wife, Hallveig Fr&oacute;&eth;ad&oacute;ttir, who many claim was the daughter of Frodo from &lsquo;Lord Of The Rings&rsquo;. Nothing has been proven about that, however.</p>\r\n\r\n<p>One day Ing&oacute;lfur and Hallveig were taking a stroll around town. They were walking their dog, who was called Pl&uacute;t&oacute; and was a Great Dane. It was a sizzling hot summer&rsquo;s day. It was long before the t-shirt was invented. They were both dressed in full suits of armour, with swords and shields and helmets and everything. They stopped by at &Iacute;sb&uacute;&eth; Vesturb&aelig;jar in Hagamelur to get some ice cream and cool down. The story goes that Ing&oacute;lfur asked the clerk whether she knew what the country was called.&nbsp;</p>\r\n\r\n<p>She thought it was called Thule. Ing&oacute;lfur felt that was a stupid name.&nbsp;</p>\r\n\r\n<p>&ldquo;No country can be called Thule&rdquo;, he said.&nbsp;</p>\r\n\r\n<p>Outside the&nbsp;<br />\r\nHenry inside the eyjafjallajokull theatreHenry inside the eyjafjallajokull theatre<br />\r\nHenry inside the eyjafjallajokull theatre<br />\r\nice cream shop, a crowd had gathered. They had heard that foreign visitors were in town. A lot of those people were elves. Ing&oacute;lfur then approached the crowd, raised his ice cream cone aloft and shouted:&nbsp;</p>\r\n\r\n<p>&ldquo;Henceforth this country will be called Iceland, because one can get the world&rsquo;s best ice cream here!&rdquo;.&nbsp;</p>\r\n\r\n<p>Today we have a statue of Ing&oacute;lfur. The statue depicts Ing&oacute;lfur dying of heat, leaning on his dog.&nbsp;</p>\r\n\r\n<p>Don&rsquo;t be a stranger, be like Ing&oacute;lfur! &quot;&nbsp;</p>\r\n\r\n<p>Only in Iceland!&nbsp;</p>","shortDesc":"&nbsp;mainland Europe and North America, Iceland has always taken it&#39;s own unique path. Icelandic architecture and fashion is a reflection of it&#39;s unusual geography, the Icelandic palette is most comfortable when quality local ingredients are cured, cultured, fermented, or pickled, and the Icelandic people revel in self sufficiency and environmental sustainability. Iceland has always been deeply rooted in nordic liberal sensibilities, but unlike any other nation, they refused to bail out their banks after the 2008 recession, in 2009 they elected the world&#39;s first openly gay female prime minister and in 2010, Reykjavik elected John Gnarr, punk rock singer, comedian, and self proclaimed anarchist as their mayor. The physical landscape is as striking and unique as the culture itself; an island covered in black volcanic rock, lush green fields, geothermal vents and dramatic volcanoes. It was with this in mind, that Dennie, Henry and I boarded a plane for Reykjavik over Easter holidays, where we would spend 9 days swimming in hot pools, driving through fjords, and eating delicious Skyr (Icelandic yogurt).&nbsp;\r\n\r\nIceland is expensive. As&nbsp;\r\nHiking near Eyjafjallaj&ouml;kullHiking near Eyjafjallaj&ouml;kull\r\nHiking near Eyjafjallaj&ouml;kullIn a world that is increasingly homogenous, fiercely independent cultures and places are especially intriguing. Likely a result of it&#39;s geographical isolation from both\r\na way to mitigate the costs our plan involved renting an old, rusty but mainly reliable car from Sadcar (a 2002 Yaris with 280,000 Kms), cooking 2 out of 3 meals a day at our rental apartment with Bonus brand groceries and doing as little shopping as possible. Upon walking through customs I began to have some minor reservations about our plan to be budget oriented when we were greeted by what I assume is one out of the two Sadcar employees who took us to a quonset in a field 10 minutes from the airport. When we inquired about a carseat for Henry, they directed us to the back of the auto body shop/rental car graveyard where 3 very used and slightly broken carseats sat amongst mufflers and cooling fluids. Dennie chose the most functional of the lot, we loaded into our Sadcar and took off towards Reykjavik through a minor snow storm.&nbsp;\r\n\r\nOur little Ikea apartment was perfectly located down the street from Hallgrimskirka, the spired Lutheran church that provides a compass for travellers exploring the city. This was a great location to have as home base, as most of our mornings were spent wondering the streets&nbsp;\r\nHank and I inside the HarpaHank and I inside the Harpa\r\nHank and I inside the Harpa\r\nof the old town where colorful terraced houses with main floor commercial space provide a vibrant and walkable downtown dotted with record shops with comfy couches and free espresso (12 Tonar), Icelandic design and furniture stores, vegetarian cafes, pubs, clubs and curry houses. We visited all three locations of the Reykjavik Art Museum (Hafnarhus, Kjarvalsstadir, Asmundarsafn) where the post modern works of Erro and the cubist and abstract landscape paintings of Kjarval hang next to rotating exhibits from contemporary Icelandic artists. We stumbled upon an Easter egg hunt in the Einar Jonsson Sculpture Park, played cards in the sprawling lounges inside The Harpa, and took in the Reykjavik Museum of Photography (inside the public library), the Viking Saga Museum, the Reykjavik Children&#39;s Park and &quot;zoo&quot; (more of a petting zoo) and took the elevator to the observatory at The Pearl. The city is surprisingly cosmopolitan yet retains a small town hospitality that acts as a reminder that there are only 120,000 people within city limits.&nbsp;\r\n\r\nDespite the high cost of bars and restaurants in Reykjavik&#39;s centre we managed to find a number of reasonably priced eateries serving delicious and fresh food. Here are some of our recommendations: Babalu (grilled&nbsp;\r\nEaster Egg Hunt in Einar J&oacute;nsson Sculpture GardenEaster Egg Hunt in Einar J&oacute;nsson Sculpture Garden\r\nEaster Egg Hunt in Einar J&oacute;nsson Sculpture Garden\r\nHallgr&iacute;mskirkja in the background.\r\ncheese and tomato soup), C is for Cookie (homemade soup and sandwiches with great cheesecake), Laundromat Cafe (lake trout with root vegetables was outstanding and the children&#39;s play area in the basement is something to behold!), Austur India Fjelagid (delicious vegetarian Thali), Graen Kostur (Eastern inspired fusion veggie food with two lunch options daily). For drinks, Microbar has a lot of local craft beers on tap (Happy Hour from 5-8 pm). The Labowski Bar also seemed like an amazing place but they were having pub trivia when we walked in so we didn&#39;t stay for a drink.&nbsp;\r\n\r\nOur Sadcar managed a number of day trips from Reykjavik; we drove north through the Hvalfjorour (Whale Fjord), stopping for a picnic near some rapids. We drove to the geothermal town of Hverager&eth;i and onto the famed Eyjafjallajokull volcano which erupted in 2010 causing flight cancellations across Europe. We drove the Golden Circle with stops at Geyser, Pingvellir National Park and the Gulfoss waterfall. Once you leave Reykjavik the geography is stark but majestic with green fields punctuated with black volcanic rock, rolling hills, steep mountain passes and steam rising into the air from thermal vents dotting the landscape throughout.&nbsp;\r\n\r\nDennie&nbsp;\r\nOutside of the Blue LagoonOutside of the Blue Lagoon\r\nOutside of the Blue Lagoon\r\nand I have fast come to the realization that when travelling with a baby, the experience is more fun for all if all planning revolves around the baby. And while Reykjavik&#39;s legendary nightlife may have called my name once or twice, parenting with a hangover certainly did not. As such, we spent a good deal of our time in Iceland immersing ourselves into the thermal pool culture. With 122 thermal pools and 17 in Reykjavik alone, we made it our mission to swim in a new pool each day. In Reykjavik we swam at Laugardalslaug, Sundhollin, Arbaejarlaug, Grafarvogslaug, Sudurbaejarlaug, and Asvallalaug. During our day trips around the Icelandic country side we also had the opportunity to swim at the beautiful pool at Hverageroi, naked in the deserted Seljallalaug located in a mountain valley surrounded by waterfalls, and on our last day at expensive but amazing Blue Lagoon. 9 pools in 9 days. The water in all public pools is chemical free, heated through geothermal, and nearly all have a number of &quot;hot pots&quot;, saunas, lanes for swimming, kids pools, and water-slides. I got the impression from my time sitting in &quot;hot pots&quot; chatting with locals that thermal pools are important&nbsp;\r\nEnroute to the Seljvavellir hot pool Enroute to the Seljvavellir hot pool&nbsp;\r\nEnroute to the Seljvavellir hot pool\r\ngathering places for members of the community. Old and young alike move between the various pools and openly converse with strangers and friends. In moments where Henry was grumpy or tired we always knew we were within a few minutes from a pool where he would immediately be transformed back into the smiling Hank we have become used to. While the pools certainly made travelling in Iceland with a baby much easier, it is the Icelandic people who really make Iceland a child friendly locale. Almost every restaurant we went to had a children&#39;s play area, there was signage that encouraged breastfeeding, and all bars and pubs allow children. Icelandic people were warm and outgoing but not loud or obnoxious and no matter where we went, it seemed they had thought about ways to welcome children.&nbsp;\r\n\r\nOn our final morning in Iceland, I walked down the street from our apartment to pick up a couple cd&#39;s at Tonar 12. I sat on their comfy couches listening to FM Belfast and Seabear while Henry rummaged through the stacks. Without asking, the man running the shop brought me an espresso. I picked up a Reykjavik guidebook from a coffee table and&nbsp;\r\nDennie driving our Sad CarDennie driving our Sad Car\r\nDennie driving our Sad Car\r\nopened the book to the first page to read the mayor&#39;s welcome message for visitors. Jon Gnarr (the mayor) foretold his version of the country&#39;s origin. I read,&nbsp;\r\n\r\n&quot;But how can it be that such a warm country came to possess such a frigid name? Yes, the explanation is simple: MISUNDERSTANDING. Ing&oacute;lfur Arnarson, the first man that found Reykjav&iacute;k, wasn&rsquo;t on his way here at all. He was en route to the United States of America, to buy grapes and other fast food that grew wild there in those days. He was very interested in food. And also homicide. On his way he noticed a cloud of smoke ascending to the heavens from an unknown country. His curious nature got the best of him, and he changed his course and set sail to Reykjav&iacute;k (Reykjav&iacute;k literally means &ldquo;smoky bay&rdquo;!).&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nAs he disembarked his ship, he saw that the smoke was in fact steam rising from Reykjav&iacute;k&rsquo;s many swimming pools. He was therefore quick in tearing off the suit of armour that he had worn in case he&rsquo;d encounter some Native Americans while picking grapes, and jumping into some swim trunks. After swimming a good&nbsp;\r\nHank test driving Indie music at Tonar 12 in ReykjavikHank test driving Indie music at Tonar 12 in Reykjavik\r\nHank test driving Indie music at Tonar 12 in Reykjavik\r\n500 metres he sat in the hot tub and relaxed. After a fun chat with the locals he had forgotten all about America. Who needs to travel all the way to America to pick grapes when there&rsquo;s a shop on Laugavegur called V&iacute;nberi&eth; (V&iacute;nberi&eth; literally means: &ldquo;the grape&rdquo;)? Ing&oacute;lfur decided to settle here. He rented a small apartment along with his wife, Hallveig Fr&oacute;&eth;ad&oacute;ttir, who many claim was the daughter of Frodo from &lsquo;Lord Of The Rings&rsquo;. Nothing has been proven about that, however.\r\n\r\nOne day Ing&oacute;lfur and Hallveig were taking a stroll around town. They were walking their dog, who was called Pl&uacute;t&oacute; and was a Great Dane. It was a sizzling hot summer&rsquo;s day. It was long before the t-shirt was invented. They were both dressed in full suits of armour, with swords and shields and helmets and everything. They stopped by at &Iacute;sb&uacute;&eth; Vesturb&aelig;jar in Hagamelur to get some ice cream and cool down. The story goes that Ing&oacute;lfur asked the clerk whether she knew what the country was called.&nbsp;\r\n\r\nShe thought it was called Thule. Ing&oacute;lfur felt that was a stupid name.&nbsp;\r\n\r\n&ldquo;No country can be called Thule&rdquo;, he said.&nbsp;\r\n\r\nOutside the&nbsp;\r\nHenry inside the eyjafjallajokull theatreHenry inside the eyjafjallajokull theatre\r\nHenry inside the eyjafjallajokull theatre\r\nice cream shop, a crowd had gathered. They had heard that foreign visitors were in town. A lot of those people were elves. Ing&oacute;lfur then approached the crowd, raised his ice cream cone aloft and shouted:&nbsp;\r\n\r\n&ldquo;Henceforth this country will be called Iceland, because one can get the world&rsquo;s best ice cream here!&rdquo;.&nbsp;\r\n\r\nToday we have a statue of Ing&oacute;lfur. The statue depicts Ing&oacute;lfur dying of heat, leaning on his dog.&nbsp;\r\n\r\nDon&rsquo;t be a stranger, be like Ing&oacute;lfur! &quot;&nbsp;\r\n\r\nOnly in Iceland!&nbsp;","slug":"https://demotravels.com/api/blog/Peace-Train-A-Long-Time-Coming"}]
//
// HomeOfferModelClass homeOfferModelClassFromJson(String str) => HomeOfferModelClass.fromJson(json.decode(str));
// String homeOfferModelClassToJson(HomeOfferModelClass data) => json.encode(data.toJson());
// class HomeOfferModelClass {
//   HomeOfferModelClass({
//       List<Modules>? modules,
//       List<Slider>? slider,
//       List<PaymentGateways>? paymentGateways,
//       List<Extras>? extras,
//       List<Currencies>? currencies,
//       List<Languages>? languages,
//       Cms? cms,
//       App? app,
//       List<Social>? social,
//       List<FeaturedHotels>? featuredHotels,
//       List<FeaturedFlights>? featuredFlights,
//       List<FeaturedTours>? featuredTours,
//       List<FeaturedCars>? featuredCars,
//       List<FeaturedBlog>? featuredBlog,}){
//     _modules = modules;
//     _slider = slider;
//     _paymentGateways = paymentGateways;
//     _extras = extras;
//     _currencies = currencies;
//     _languages = languages;
//     _cms = cms;
//     _app = app;
//     _social = social;
//     _featuredHotels = featuredHotels;
//     _featuredFlights = featuredFlights;
//     _featuredTours = featuredTours;
//     _featuredCars = featuredCars;
//     _featuredBlog = featuredBlog;
// }
//
//   HomeOfferModelClass.fromJson(dynamic json) {
//     if (json['modules'] != null) {
//       _modules = [];
//       json['modules'].forEach((v) {
//         _modules?.add(Modules.fromJson(v));
//       });
//     }
//     if (json['slider'] != null) {
//       _slider = [];
//       json['slider'].forEach((v) {
//         _slider?.add(Slider.fromJson(v));
//       });
//     }
//     if (json['payment_gateways'] != null) {
//       _paymentGateways = [];
//       json['payment_gateways'].forEach((v) {
//         _paymentGateways?.add(PaymentGateways.fromJson(v));
//       });
//     }
//     if (json['extras'] != null) {
//       _extras = [];
//       json['extras'].forEach((v) {
//         _extras?.add(Extras.fromJson(v));
//       });
//     }
//     if (json['currencies'] != null) {
//       _currencies = [];
//       json['currencies'].forEach((v) {
//         _currencies?.add(Currencies.fromJson(v));
//       });
//     }
//     if (json['languages'] != null) {
//       _languages = [];
//       json['languages'].forEach((v) {
//         _languages?.add(Languages.fromJson(v));
//       });
//     }
//     _cms = json['cms'] != null ? Cms.fromJson(json['cms']) : null;
//     _app = json['app'] != null ? App.fromJson(json['app']) : null;
//     if (json['social'] != null) {
//       _social = [];
//       json['social'].forEach((v) {
//         _social?.add(Social.fromJson(v));
//       });
//     }
//     if (json['featured_hotels'] != null) {
//       _featuredHotels = [];
//       json['featured_hotels'].forEach((v) {
//         _featuredHotels?.add(FeaturedHotels.fromJson(v));
//       });
//     }
//     if (json['featured_flights'] != null) {
//       _featuredFlights = [];
//       json['featured_flights'].forEach((v) {
//         _featuredFlights?.add(FeaturedFlights.fromJson(v));
//       });
//     }
//     if (json['featured_tours'] != null) {
//       _featuredTours = [];
//       json['featured_tours'].forEach((v) {
//         _featuredTours?.add(FeaturedTours.fromJson(v));
//       });
//     }
//     if (json['featured_cars'] != null) {
//       _featuredCars = [];
//       json['featured_cars'].forEach((v) {
//         _featuredCars?.add(FeaturedCars.fromJson(v));
//       });
//     }
//     if (json['featured_blog'] != null) {
//       _featuredBlog = [];
//       json['featured_blog'].forEach((v) {
//         _featuredBlog?.add(FeaturedBlog.fromJson(v));
//       });
//     }
//   }
//   List<Modules>? _modules;
//   List<Slider>? _slider;
//   List<PaymentGateways>? _paymentGateways;
//   List<Extras>? _extras;
//   List<Currencies>? _currencies;
//   List<Languages>? _languages;
//   Cms? _cms;
//   App? _app;
//   List<Social>? _social;
//   List<FeaturedHotels>? _featuredHotels;
//   List<FeaturedFlights>? _featuredFlights;
//   List<FeaturedTours>? _featuredTours;
//   List<FeaturedCars>? _featuredCars;
//   List<FeaturedBlog>? _featuredBlog;
// HomeOfferModelClass copyWith({  List<Modules>? modules,
//   List<Slider>? slider,
//   List<PaymentGateways>? paymentGateways,
//   List<Extras>? extras,
//   List<Currencies>? currencies,
//   List<Languages>? languages,
//   Cms? cms,
//   App? app,
//   List<Social>? social,
//   List<FeaturedHotels>? featuredHotels,
//   List<FeaturedFlights>? featuredFlights,
//   List<FeaturedTours>? featuredTours,
//   List<FeaturedCars>? featuredCars,
//   List<FeaturedBlog>? featuredBlog,
// }) => HomeOfferModelClass(  modules: modules ?? _modules,
//   slider: slider ?? _slider,
//   paymentGateways: paymentGateways ?? _paymentGateways,
//   extras: extras ?? _extras,
//   currencies: currencies ?? _currencies,
//   languages: languages ?? _languages,
//   cms: cms ?? _cms,
//   app: app ?? _app,
//   social: social ?? _social,
//   featuredHotels: featuredHotels ?? _featuredHotels,
//   featuredFlights: featuredFlights ?? _featuredFlights,
//   featuredTours: featuredTours ?? _featuredTours,
//   featuredCars: featuredCars ?? _featuredCars,
//   featuredBlog: featuredBlog ?? _featuredBlog,
// );
//   List<Modules>? get modules => _modules;
//   List<Slider>? get slider => _slider;
//   List<PaymentGateways>? get paymentGateways => _paymentGateways;
//   List<Extras>? get extras => _extras;
//   List<Currencies>? get currencies => _currencies;
//   List<Languages>? get languages => _languages;
//   Cms? get cms => _cms;
//   App? get app => _app;
//   List<Social>? get social => _social;
//   List<FeaturedHotels>? get featuredHotels => _featuredHotels;
//   List<FeaturedFlights>? get featuredFlights => _featuredFlights;
//   List<FeaturedTours>? get featuredTours => _featuredTours;
//   List<FeaturedCars>? get featuredCars => _featuredCars;
//   List<FeaturedBlog>? get featuredBlog => _featuredBlog;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (_modules != null) {
//       map['modules'] = _modules?.map((v) => v.toJson()).toList();
//     }
//     if (_slider != null) {
//       map['slider'] = _slider?.map((v) => v.toJson()).toList();
//     }
//     if (_paymentGateways != null) {
//       map['payment_gateways'] = _paymentGateways?.map((v) => v.toJson()).toList();
//     }
//     if (_extras != null) {
//       map['extras'] = _extras?.map((v) => v.toJson()).toList();
//     }
//     if (_currencies != null) {
//       map['currencies'] = _currencies?.map((v) => v.toJson()).toList();
//     }
//     if (_languages != null) {
//       map['languages'] = _languages?.map((v) => v.toJson()).toList();
//     }
//     if (_cms != null) {
//       map['cms'] = _cms?.toJson();
//     }
//     if (_app != null) {
//       map['app'] = _app?.toJson();
//     }
//     if (_social != null) {
//       map['social'] = _social?.map((v) => v.toJson()).toList();
//     }
//     if (_featuredHotels != null) {
//       map['featured_hotels'] = _featuredHotels?.map((v) => v.toJson()).toList();
//     }
//     if (_featuredFlights != null) {
//       map['featured_flights'] = _featuredFlights?.map((v) => v.toJson()).toList();
//     }
//     if (_featuredTours != null) {
//       map['featured_tours'] = _featuredTours?.map((v) => v.toJson()).toList();
//     }
//     if (_featuredCars != null) {
//       map['featured_cars'] = _featuredCars?.map((v) => v.toJson()).toList();
//     }
//     if (_featuredBlog != null) {
//       map['featured_blog'] = _featuredBlog?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
//
// }
//
// /// id : "35"
// /// title : "Virgin Gorda beaches and lobste"
// /// thumbnail : "https://demotravels.com/api/uploads/images/blog/780975_1.jpg"
// /// desc : "<p>This is the second leg of a truly fun week. There are adventures to get each morning when we land somewhere else, but also fun time on the boat itself.&nbsp;</p>\r\n\r\n<p>The Club Med 2 has an open bar. Yes, that means free flow of pretty good things...all day long. So being on a French boat, you have Ricard for aperitif at lunch time if you are on the boat at lunch time...and pina colada by the pool before sunset, and obviously wine during meals. We are in the North Hemisphere end of November, so sunsets are early at around 5.30pm each day...with some pretty cool views from the swimming pool bar on the back deck. By 6pm, it&#39;s champagne time...all night long. Well, first it&#39;s shower time and getting change for the evening obviously...this is still a French place! And as we all now that mixing different alcohol drinks is not a great idea, I found a fun group of people ready to go on the champagne all night long, each evening, for great and fun time! More in the next entries of this truly fun group of people.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Little warning, Club Med 2&nbsp;<br />\r\nClub Med 2Club Med 2<br />\r\nClub Med 2<br />\r\nis French, and it feels. Out of the 280 guests on the boat this week, I don&#39;t think a single one doesn&#39;t speak at least some French. It would be a pretty boring week if you can only speak English here...and as you may be aware...French people living in France suck when it comes to speak something else than French. You&#39;ve been honestly warned!&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>So this morning, it&#39;s BVI time. No I&#39;m not coming for business here. And BVI doesn&#39;t only stand for offshore companies...it does too stand for gorgeous beaches, yachts, and British Virgin Islands. We have sailed all night long from Dominica...Dominica is Commonwealth and poor....BVI is British Territory and pretty wealthy.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I spent my day with Thierry....same age as me, and ready to have some fun this week. Because at the end of the day we know you don&#39;t find single ladies in their thirties on these cruises...we knew we would need to get organized to do something else than read our books! Didn&#39;t do my homework about Virgin Gorda. I kew the diving was average, and that the cruise had a BBQ lunch of lobster organized for us on the&nbsp;<br />\r\nLobster time...Lobster time...<br />\r\nLobster time...<br />\r\nbeach! So we took a &quot;beacher&quot; with the intention to simply go on the beach for the morning.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There was a shuttle to &quot;a&quot; beach rented for the morning by Club Med. We set next to the rasta driver...yeah man...and he dropped us on the way. That was off-plan, completely out of the blue! It was time for us to go explore the National Park of &quot;The Baths&quot;. This is some kind of a National Park...it is a series of beaches separated by granite rocks. I first felt in the Seychelles...before finding myself rather in some kind of adventure hike for teenagers ready to have some serious fun. Wow, that place is amazing!&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We spent the all morning going from beach to beach and climbing those huge rocks...even getting lost on deserted beaches as wandering if we were only on the right trail. The water was beautiful and warm....the yachts were around, it was just plain full fun...simple!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We made our way back to the Club Med beach, just on time for the last shuttle. Good idea, as we had no idea where the BBQ was, and the ride back to&nbsp;<br />\r\nLittle pina colada by the pool...Little pina colada by the pool...<br />\r\nLittle pina colada by the pool...<br />\r\nthe landing point of the cruise was quite a walk away. Lobster BBQ! That simply cannot be bad just by the way it sounds. It was another of these...free flow of rose wine...of salad, and yes, of lobster too! The sun was there, at the end of the lunch...our faces ended the same color as the lobsters on the grill....but one more time...fun it was!&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Back on the boat before the crowds for a good nap and some swimming pool time. Not that 280 guests makes you feel crowded on such a huge sail boat...but queueing is simply really not our thing.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Another really fun night was awaiting us...and a short sail to the land of Uncle Sam...or pretty close to this actually, for another fun adventure...on which I will have to write pretty soon!</p>\r\n\r\n<p>&nbsp;</p>"
// /// shortDesc : "This is the second leg of a truly fun week. There are adventures to get each morning when we land somewhere else, but also fun time on the boat itself.&nbsp;\r\n\r\nThe Club Med 2 has an open bar. Yes, that means free flow of pretty good things...all day long. So being on a French boat, you have Ricard for aperitif at lunch time if you are on the boat at lunch time...and pina colada by the pool before sunset, and obviously wine during meals. We are in the North Hemisphere end of November, so sunsets are early at around 5.30pm each day...with some pretty cool views from the swimming pool bar on the back deck. By 6pm, it&#39;s champagne time...all night long. Well, first it&#39;s shower time and getting change for the evening obviously...this is still a French place! And as we all now that mixing different alcohol drinks is not a great idea, I found a fun group of people ready to go on the champagne all night long, each evening, for great and fun time! More in the next entries of this truly fun group of people.&nbsp;\r\n\r\n&nbsp;\r\n\r\nLittle warning, Club Med 2&nbsp;\r\nClub Med 2Club Med 2\r\nClub Med 2\r\nis French, and it feels. Out of the 280 guests on the boat this week, I don&#39;t think a single one doesn&#39;t speak at least some French. It would be a pretty boring week if you can only speak English here...and as you may be aware...French people living in France suck when it comes to speak something else than French. You&#39;ve been honestly warned!&nbsp;\r\n\r\n&nbsp;\r\n\r\nSo this morning, it&#39;s BVI time. No I&#39;m not coming for business here. And BVI doesn&#39;t only stand for offshore companies...it does too stand for gorgeous beaches, yachts, and British Virgin Islands. We have sailed all night long from Dominica...Dominica is Commonwealth and poor....BVI is British Territory and pretty wealthy.&nbsp;\r\n\r\n&nbsp;\r\n\r\nI spent my day with Thierry....same age as me, and ready to have some fun this week. Because at the end of the day we know you don&#39;t find single ladies in their thirties on these cruises...we knew we would need to get organized to do something else than read our books! Didn&#39;t do my homework about Virgin Gorda. I kew the diving was average, and that the cruise had a BBQ lunch of lobster organized for us on the&nbsp;\r\nLobster time...Lobster time...\r\nLobster time...\r\nbeach! So we took a &quot;beacher&quot; with the intention to simply go on the beach for the morning.&nbsp;\r\n\r\n&nbsp;\r\n\r\nThere was a shuttle to &quot;a&quot; beach rented for the morning by Club Med. We set next to the rasta driver...yeah man...and he dropped us on the way. That was off-plan, completely out of the blue! It was time for us to go explore the National Park of &quot;The Baths&quot;. This is some kind of a National Park...it is a series of beaches separated by granite rocks. I first felt in the Seychelles...before finding myself rather in some kind of adventure hike for teenagers ready to have some serious fun. Wow, that place is amazing!&nbsp;\r\n\r\n&nbsp;\r\n\r\nWe spent the all morning going from beach to beach and climbing those huge rocks...even getting lost on deserted beaches as wandering if we were only on the right trail. The water was beautiful and warm....the yachts were around, it was just plain full fun...simple!\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nWe made our way back to the Club Med beach, just on time for the last shuttle. Good idea, as we had no idea where the BBQ was, and the ride back to&nbsp;\r\nLittle pina colada by the pool...Little pina colada by the pool...\r\nLittle pina colada by the pool...\r\nthe landing point of the cruise was quite a walk away. Lobster BBQ! That simply cannot be bad just by the way it sounds. It was another of these...free flow of rose wine...of salad, and yes, of lobster too! The sun was there, at the end of the lunch...our faces ended the same color as the lobsters on the grill....but one more time...fun it was!&nbsp;\r\n\r\n&nbsp;\r\n\r\nBack on the boat before the crowds for a good nap and some swimming pool time. Not that 280 guests makes you feel crowded on such a huge sail boat...but queueing is simply really not our thing.&nbsp;\r\n\r\n&nbsp;\r\n\r\nAnother really fun night was awaiting us...and a short sail to the land of Uncle Sam...or pretty close to this actually, for another fun adventure...on which I will have to write pretty soon!\r\n\r\n&nbsp;"
// /// slug : "https://demotravels.com/api/blog/Virgin-Gorda-beaches-and-lobste"
//
// FeaturedBlog featuredBlogFromJson(String str) => FeaturedBlog.fromJson(json.decode(str));
// String featuredBlogToJson(FeaturedBlog data) => json.encode(data.toJson());
// class FeaturedBlog {
//   FeaturedBlog({
//       String? id,
//       String? title,
//       String? thumbnail,
//       String? desc,
//       String? shortDesc,
//       String? slug,}){
//     _id = id;
//     _title = title;
//     _thumbnail = thumbnail;
//     _desc = desc;
//     _shortDesc = shortDesc;
//     _slug = slug;
// }
//
//   FeaturedBlog.fromJson(dynamic json) {
//     _id = json['id'];
//     _title = json['title'];
//     _thumbnail = json['thumbnail'];
//     _desc = json['desc'];
//     _shortDesc = json['shortDesc'];
//     _slug = json['slug'];
//   }
//   String? _id;
//   String? _title;
//   String? _thumbnail;
//   String? _desc;
//   String? _shortDesc;
//   String? _slug;
// FeaturedBlog copyWith({  String? id,
//   String? title,
//   String? thumbnail,
//   String? desc,
//   String? shortDesc,
//   String? slug,
// }) => FeaturedBlog(  id: id ?? _id,
//   title: title ?? _title,
//   thumbnail: thumbnail ?? _thumbnail,
//   desc: desc ?? _desc,
//   shortDesc: shortDesc ?? _shortDesc,
//   slug: slug ?? _slug,
// );
//   String? get id => _id;
//   String? get title => _title;
//   String? get thumbnail => _thumbnail;
//   String? get desc => _desc;
//   String? get shortDesc => _shortDesc;
//   String? get slug => _slug;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['title'] = _title;
//     map['thumbnail'] = _thumbnail;
//     map['desc'] = _desc;
//     map['shortDesc'] = _shortDesc;
//     map['slug'] = _slug;
//     return map;
//   }
//
// }
//
// /// id : "11"
// /// title : "Toyota Camry 2015 full option"
// /// slug : "https://demotravels.com/api/cars/united-kingdom/kapaa/Toyota-Camry-2015-full-option"
// /// thumbnail : "https://demotravels.com/api/uploads/images/cars/slider/thumbs/732422_1.jpg"
// /// stars : "<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i>"
// /// starsCount : "4"
// /// location : "Kapaa"
// /// desc : "Travel in comfort and style in this compact model. With room for 5 passengers and 4 pieces of luggage, it&#39;s ideal for families and small to medium-sized &nbsp;Travel in comfort and style in this compact model. With room for 5 passengers and 4 pieces of luggage, it&#39;s ideal for families and small to medium-sized&nbsp;Travel in comfort and style in this compact model. With room for 5 passengers and 4 pieces of luggage, it&#39;s ideal for families and small to medium-sized&nbsp;\r\n"
// /// doors : "2"
// /// passengers : "6"
// /// transmission : "Auto"
// /// airportPickup : "no"
// /// baggage : "x2"
// /// price : 50
// /// currCode : "usd"
// /// carType : "Luxury"
// /// discount : "10"
// /// latitude : "22.0881391"
// /// longitude : "-159.33798179999997"
// /// avgReviews : {"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"0","overall":0}
//
// FeaturedCars featuredCarsFromJson(String str) => FeaturedCars.fromJson(json.decode(str));
// String featuredCarsToJson(FeaturedCars data) => json.encode(data.toJson());
// class FeaturedCars {
//   FeaturedCars({
//       String? id,
//       String? title,
//       String? slug,
//       String? thumbnail,
//       String? stars,
//       String? starsCount,
//       String? location,
//       String? desc,
//       String? doors,
//       String? passengers,
//       String? transmission,
//       String? airportPickup,
//       String? baggage,
//       num? price,
//       String? currCode,
//       String? carType,
//       String? discount,
//       String? latitude,
//       String? longitude,
//       AvgReviews? avgReviews,}){
//     _id = id;
//     _title = title;
//     _slug = slug;
//     _thumbnail = thumbnail;
//     _stars = stars;
//     _starsCount = starsCount;
//     _location = location;
//     _desc = desc;
//     _doors = doors;
//     _passengers = passengers;
//     _transmission = transmission;
//     _airportPickup = airportPickup;
//     _baggage = baggage;
//     _price = price;
//     _currCode = currCode;
//     _carType = carType;
//     _discount = discount;
//     _latitude = latitude;
//     _longitude = longitude;
//     _avgReviews = avgReviews;
// }
//
//   FeaturedCars.fromJson(dynamic json) {
//     _id = json['id'];
//     _title = json['title'];
//     _slug = json['slug'];
//     _thumbnail = json['thumbnail'];
//     _stars = json['stars'];
//     _starsCount = json['starsCount'];
//     _location = json['location'];
//     _desc = json['desc'];
//     _doors = json['doors'];
//     _passengers = json['passengers'];
//     _transmission = json['transmission'];
//     _airportPickup = json['airportPickup'];
//     _baggage = json['baggage'];
//     _price = json['price'];
//     _currCode = json['currCode'];
//     _carType = json['carType'];
//     _discount = json['discount'];
//     _latitude = json['latitude'];
//     _longitude = json['longitude'];
//     _avgReviews = json['avgReviews'] != null ? AvgReviews.fromJson(json['avgReviews']) : null;
//   }
//   String? _id;
//   String? _title;
//   String? _slug;
//   String? _thumbnail;
//   String? _stars;
//   String? _starsCount;
//   String? _location;
//   String? _desc;
//   String? _doors;
//   String? _passengers;
//   String? _transmission;
//   String? _airportPickup;
//   String? _baggage;
//   num? _price;
//   String? _currCode;
//   String? _carType;
//   String? _discount;
//   String? _latitude;
//   String? _longitude;
//   AvgReviews? _avgReviews;
// FeaturedCars copyWith({  String? id,
//   String? title,
//   String? slug,
//   String? thumbnail,
//   String? stars,
//   String? starsCount,
//   String? location,
//   String? desc,
//   String? doors,
//   String? passengers,
//   String? transmission,
//   String? airportPickup,
//   String? baggage,
//   num? price,
//   String? currCode,
//   String? carType,
//   String? discount,
//   String? latitude,
//   String? longitude,
//   AvgReviews? avgReviews,
// }) => FeaturedCars(  id: id ?? _id,
//   title: title ?? _title,
//   slug: slug ?? _slug,
//   thumbnail: thumbnail ?? _thumbnail,
//   stars: stars ?? _stars,
//   starsCount: starsCount ?? _starsCount,
//   location: location ?? _location,
//   desc: desc ?? _desc,
//   doors: doors ?? _doors,
//   passengers: passengers ?? _passengers,
//   transmission: transmission ?? _transmission,
//   airportPickup: airportPickup ?? _airportPickup,
//   baggage: baggage ?? _baggage,
//   price: price ?? _price,
//   currCode: currCode ?? _currCode,
//   carType: carType ?? _carType,
//   discount: discount ?? _discount,
//   latitude: latitude ?? _latitude,
//   longitude: longitude ?? _longitude,
//   avgReviews: avgReviews ?? _avgReviews,
// );
//   String? get id => _id;
//   String? get title => _title;
//   String? get slug => _slug;
//   String? get thumbnail => _thumbnail;
//   String? get stars => _stars;
//   String? get starsCount => _starsCount;
//   String? get location => _location;
//   String? get desc => _desc;
//   String? get doors => _doors;
//   String? get passengers => _passengers;
//   String? get transmission => _transmission;
//   String? get airportPickup => _airportPickup;
//   String? get baggage => _baggage;
//   num? get price => _price;
//   String? get currCode => _currCode;
//   String? get carType => _carType;
//   String? get discount => _discount;
//   String? get latitude => _latitude;
//   String? get longitude => _longitude;
//   AvgReviews? get avgReviews => _avgReviews;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['title'] = _title;
//     map['slug'] = _slug;
//     map['thumbnail'] = _thumbnail;
//     map['stars'] = _stars;
//     map['starsCount'] = _starsCount;
//     map['location'] = _location;
//     map['desc'] = _desc;
//     map['doors'] = _doors;
//     map['passengers'] = _passengers;
//     map['transmission'] = _transmission;
//     map['airportPickup'] = _airportPickup;
//     map['baggage'] = _baggage;
//     map['price'] = _price;
//     map['currCode'] = _currCode;
//     map['carType'] = _carType;
//     map['discount'] = _discount;
//     map['latitude'] = _latitude;
//     map['longitude'] = _longitude;
//     if (_avgReviews != null) {
//       map['avgReviews'] = _avgReviews?.toJson();
//     }
//     return map;
//   }
//
// }
//
// /// clean : 0
// /// comfort : 0
// /// location : 0
// /// facilities : 0
// /// staff : 0
// /// totalReviews : "0"
// /// overall : 0
//
// AvgReviews avgReviewsFromJson(String str) => AvgReviews.fromJson(json.decode(str));
// String avgReviewsToJson(AvgReviews data) => json.encode(data.toJson());
// class AvgReviews {
//   AvgReviews({
//       num? clean,
//       num? comfort,
//       num? location,
//       num? facilities,
//       num? staff,
//       String? totalReviews,
//       num? overall,}){
//     _clean = clean;
//     _comfort = comfort;
//     _location = location;
//     _facilities = facilities;
//     _staff = staff;
//     _totalReviews = totalReviews;
//     _overall = overall;
// }
//
//   AvgReviews.fromJson(dynamic json) {
//     _clean = json['clean'];
//     _comfort = json['comfort'];
//     _location = json['location'];
//     _facilities = json['facilities'];
//     _staff = json['staff'];
//     _totalReviews = json['totalReviews'];
//     _overall = json['overall'];
//   }
//   num? _clean;
//   num? _comfort;
//   num? _location;
//   num? _facilities;
//   num? _staff;
//   String? _totalReviews;
//   num? _overall;
// AvgReviews copyWith({  num? clean,
//   num? comfort,
//   num? location,
//   num? facilities,
//   num? staff,
//   String? totalReviews,
//   num? overall,
// }) => AvgReviews(  clean: clean ?? _clean,
//   comfort: comfort ?? _comfort,
//   location: location ?? _location,
//   facilities: facilities ?? _facilities,
//   staff: staff ?? _staff,
//   totalReviews: totalReviews ?? _totalReviews,
//   overall: overall ?? _overall,
// );
//   num? get clean => _clean;
//   num? get comfort => _comfort;
//   num? get location => _location;
//   num? get facilities => _facilities;
//   num? get staff => _staff;
//   String? get totalReviews => _totalReviews;
//   num? get overall => _overall;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['clean'] = _clean;
//     map['comfort'] = _comfort;
//     map['location'] = _location;
//     map['facilities'] = _facilities;
//     map['staff'] = _staff;
//     map['totalReviews'] = _totalReviews;
//     map['overall'] = _overall;
//     return map;
//   }
//
// }
//
// /// id : "24"
// /// title : "Sheraton Trip"
// /// slug : "https://demotravels.com/api/tours/united-arab-emirates/dubai/Sheraton-Trip?date=10/08/2022&adults=1"
// /// thumbnail : "https://demotravels.com/api/uploads/images/tours/slider/thumbs/9.jpg"
// /// stars : "<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i>"
// /// starsCount : "5"
// /// location : "Dubai"
// /// desc : "Experience hospitality at the city, from its stunning to vibrant culture, architecture and exquisite cuisines.\r\n\r\nTake a weekend trip on the occasion&nbsp;and create a memorable experience with your loved one. If you are a sun and sea lover, this paradise offers you an array of splendid sandy beaches, where you can spend time relaxing or go on a refreshing yacht experience. And if you are a history lover, explore the birthplace of many civilizations, empires, historic figures and legends together with diverse mixture of many different ethnic origins.\r\n&nbsp;\r\n\r\n\r\nDay 1\r\nArrive to the city&nbsp;and transfer to your hotel. Check in and spend the day at leisure.\r\n\r\nDay 2\r\nAfter breakfast, go on the Boshphorus cruise and the Spice market tour. Enjoy the traditional excursion along the waterway separating Europe and Asia. The shore is lined with old wooden villas, palaces of marble, fortresses and small fishing villages. Witness major highlights whilst sailing such as the Dolmabah&ccedil;e Palace, the parks and pavilions of the Yildiz Palace. Visit the colorful Spice Market to buy local spices and shop for souvenirs.\r\n\r\nDay 3\r\nBegin your day with a delicious breakfast and go on your city tour on seat in coach basis, the heart of the Imperial Center from where the Byzantine and Ottoman Empires once ruled. Explore the Hippodrome, a beautiful park known as the Byzantine chariot racetrack &ndash; a stadium capable of holding 100,000 people. There are three great monuments in the Hippodrome, the Egyptian Obelisk of 1500 BC, the Serpentine Column from the Temple of Apollo at Delphi and the German Fountain of Wilhelm II. Later visit the Blue Mosque, which faces Hagia Sophia and features six towering minarets and spectacular interior covered by overwhelmingly blue Iznik tiles.\r\n\r\nDay 4\r\nAfter breakfast, check out from your hotel and spend the day shopping and exploring the city on your own. In the evening, transfer to the airport and board your flight and return home with great memories of your holiday.\r\n"
// /// amenities : null
// /// avgReviews : {"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":"4","overall":5.5}
// /// latitude : "21.8768446"
// /// longitude : "-159.4646715"
// /// discount : "25"
// /// price : 200
// /// currCode : "usd"
// /// inclusions : null
// /// tourDays : "13"
// /// tourNights : "12"
// /// tourType : "Holidays"
//
// FeaturedTours featuredToursFromJson(String str) => FeaturedTours.fromJson(json.decode(str));
// String featuredToursToJson(FeaturedTours data) => json.encode(data.toJson());
// class FeaturedTours {
//   FeaturedTours({
//       String? id,
//       String? title,
//       String? slug,
//       String? thumbnail,
//       String? stars,
//       String? starsCount,
//       String? location,
//       String? desc,
//       dynamic amenities,
//       AvgReviews? avgReviews,
//       String? latitude,
//       String? longitude,
//       String? discount,
//       num? price,
//       String? currCode,
//       dynamic inclusions,
//       String? tourDays,
//       String? tourNights,
//       String? tourType,}){
//     _id = id;
//     _title = title;
//     _slug = slug;
//     _thumbnail = thumbnail;
//     _stars = stars;
//     _starsCount = starsCount;
//     _location = location;
//     _desc = desc;
//     _amenities = amenities;
//     _avgReviews = avgReviews;
//     _latitude = latitude;
//     _longitude = longitude;
//     _discount = discount;
//     _price = price;
//     _currCode = currCode;
//     _inclusions = inclusions;
//     _tourDays = tourDays;
//     _tourNights = tourNights;
//     _tourType = tourType;
// }
//
//   FeaturedTours.fromJson(dynamic json) {
//     _id = json['id'];
//     _title = json['title'];
//     _slug = json['slug'];
//     _thumbnail = json['thumbnail'];
//     _stars = json['stars'];
//     _starsCount = json['starsCount'];
//     _location = json['location'];
//     _desc = json['desc'];
//     _amenities = json['amenities'];
//     _avgReviews = json['avgReviews'] != null ? AvgReviews.fromJson(json['avgReviews']) : null;
//     _latitude = json['latitude'];
//     _longitude = json['longitude'];
//     _discount = json['discount'];
//     _price = json['price'];
//     _currCode = json['currCode'];
//     _inclusions = json['inclusions'];
//     _tourDays = json['tourDays'];
//     _tourNights = json['tourNights'];
//     _tourType = json['tourType'];
//   }
//   String? _id;
//   String? _title;
//   String? _slug;
//   String? _thumbnail;
//   String? _stars;
//   String? _starsCount;
//   String? _location;
//   String? _desc;
//   dynamic _amenities;
//   AvgReviews? _avgReviews;
//   String? _latitude;
//   String? _longitude;
//   String? _discount;
//   num? _price;
//   String? _currCode;
//   dynamic _inclusions;
//   String? _tourDays;
//   String? _tourNights;
//   String? _tourType;
// FeaturedTours copyWith({  String? id,
//   String? title,
//   String? slug,
//   String? thumbnail,
//   String? stars,
//   String? starsCount,
//   String? location,
//   String? desc,
//   dynamic amenities,
//   AvgReviews? avgReviews,
//   String? latitude,
//   String? longitude,
//   String? discount,
//   num? price,
//   String? currCode,
//   dynamic inclusions,
//   String? tourDays,
//   String? tourNights,
//   String? tourType,
// }) => FeaturedTours(  id: id ?? _id,
//   title: title ?? _title,
//   slug: slug ?? _slug,
//   thumbnail: thumbnail ?? _thumbnail,
//   stars: stars ?? _stars,
//   starsCount: starsCount ?? _starsCount,
//   location: location ?? _location,
//   desc: desc ?? _desc,
//   amenities: amenities ?? _amenities,
//   avgReviews: avgReviews ?? _avgReviews,
//   latitude: latitude ?? _latitude,
//   longitude: longitude ?? _longitude,
//   discount: discount ?? _discount,
//   price: price ?? _price,
//   currCode: currCode ?? _currCode,
//   inclusions: inclusions ?? _inclusions,
//   tourDays: tourDays ?? _tourDays,
//   tourNights: tourNights ?? _tourNights,
//   tourType: tourType ?? _tourType,
// );
//   String? get id => _id;
//   String? get title => _title;
//   String? get slug => _slug;
//   String? get thumbnail => _thumbnail;
//   String? get stars => _stars;
//   String? get starsCount => _starsCount;
//   String? get location => _location;
//   String? get desc => _desc;
//   dynamic get amenities => _amenities;
//   AvgReviews? get avgReviews => _avgReviews;
//   String? get latitude => _latitude;
//   String? get longitude => _longitude;
//   String? get discount => _discount;
//   num? get price => _price;
//   String? get currCode => _currCode;
//   dynamic get inclusions => _inclusions;
//   String? get tourDays => _tourDays;
//   String? get tourNights => _tourNights;
//   String? get tourType => _tourType;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['title'] = _title;
//     map['slug'] = _slug;
//     map['thumbnail'] = _thumbnail;
//     map['stars'] = _stars;
//     map['starsCount'] = _starsCount;
//     map['location'] = _location;
//     map['desc'] = _desc;
//     map['amenities'] = _amenities;
//     if (_avgReviews != null) {
//       map['avgReviews'] = _avgReviews?.toJson();
//     }
//     map['latitude'] = _latitude;
//     map['longitude'] = _longitude;
//     map['discount'] = _discount;
//     map['price'] = _price;
//     map['currCode'] = _currCode;
//     map['inclusions'] = _inclusions;
//     map['tourDays'] = _tourDays;
//     map['tourNights'] = _tourNights;
//     map['tourType'] = _tourType;
//     return map;
//   }
//
// }
//
// /// clean : 0
// /// comfort : 0
// /// location : 0
// /// facilities : 0
// /// staff : 0
// /// totalReviews : "4"
// /// overall : 5.5
// /*
//
// AvgReviews avgReviewsFromJson(String str) => AvgReviews.fromJson(json.decode(str));
// String avgReviewsToJson(AvgReviews data) => json.encode(data.toJson());
// class AvgReviews {
//   AvgReviews({
//       num? clean,
//       num? comfort,
//       num? location,
//       num? facilities,
//       num? staff,
//       String? totalReviews,
//       num? overall,}){
//     _clean = clean;
//     _comfort = comfort;
//     _location = location;
//     _facilities = facilities;
//     _staff = staff;
//     _totalReviews = totalReviews;
//     _overall = overall;
// }
//
//   AvgReviews.fromJson(dynamic json) {
//     _clean = json['clean'];
//     _comfort = json['comfort'];
//     _location = json['location'];
//     _facilities = json['facilities'];
//     _staff = json['staff'];
//     _totalReviews = json['totalReviews'];
//     _overall = json['overall'];
//   }
//   num? _clean;
//   num? _comfort;
//   num? _location;
//   num? _facilities;
//   num? _staff;
//   String? _totalReviews;
//   num? _overall;
// AvgReviews copyWith({  num? clean,
//   num? comfort,
//   num? location,
//   num? facilities,
//   num? staff,
//   String? totalReviews,
//   num? overall,
// }) => AvgReviews(  clean: clean ?? _clean,
//   comfort: comfort ?? _comfort,
//   location: location ?? _location,
//   facilities: facilities ?? _facilities,
//   staff: staff ?? _staff,
//   totalReviews: totalReviews ?? _totalReviews,
//   overall: overall ?? _overall,
// );
//   num? get clean => _clean;
//   num? get comfort => _comfort;
//   num? get location => _location;
//   num? get facilities => _facilities;
//   num? get staff => _staff;
//   String? get totalReviews => _totalReviews;
//   num? get overall => _overall;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['clean'] = _clean;
//     map['comfort'] = _comfort;
//     map['location'] = _location;
//     map['facilities'] = _facilities;
//     map['staff'] = _staff;
//     map['totalReviews'] = _totalReviews;
//     map['overall'] = _overall;
//     return map;
//   }
//
// }
// */
//
// /// id : "12"
// /// title : "Srilanka Airways"
// /// from : "DXB Dubai"
// /// to : "RML Colombo"
// /// thumbnail : "https://demotravels.com/api/uploads/images/flights/slider/175znubux0pw4gw.png"
// /// desc : ""
// /// price : 780
// /// currCode : "usd"
//
// FeaturedFlights featuredFlightsFromJson(String str) => FeaturedFlights.fromJson(json.decode(str));
// String featuredFlightsToJson(FeaturedFlights data) => json.encode(data.toJson());
// class FeaturedFlights {
//   FeaturedFlights({
//       String? id,
//       String? title,
//       String? from,
//       String? to,
//       String? thumbnail,
//       String? desc,
//       num? price,
//       String? currCode,}){
//     _id = id;
//     _title = title;
//     _from = from;
//     _to = to;
//     _thumbnail = thumbnail;
//     _desc = desc;
//     _price = price;
//     _currCode = currCode;
// }
//
//   FeaturedFlights.fromJson(dynamic json) {
//     _id = json['id'];
//     _title = json['title'];
//     _from = json['from'];
//     _to = json['to'];
//     _thumbnail = json['thumbnail'];
//     _desc = json['desc'];
//     _price = json['price'];
//     _currCode = json['currCode'];
//   }
//   String? _id;
//   String? _title;
//   String? _from;
//   String? _to;
//   String? _thumbnail;
//   String? _desc;
//   num? _price;
//   String? _currCode;
// FeaturedFlights copyWith({  String? id,
//   String? title,
//   String? from,
//   String? to,
//   String? thumbnail,
//   String? desc,
//   num? price,
//   String? currCode,
// }) => FeaturedFlights(  id: id ?? _id,
//   title: title ?? _title,
//   from: from ?? _from,
//   to: to ?? _to,
//   thumbnail: thumbnail ?? _thumbnail,
//   desc: desc ?? _desc,
//   price: price ?? _price,
//   currCode: currCode ?? _currCode,
// );
//   String? get id => _id;
//   String? get title => _title;
//   String? get from => _from;
//   String? get to => _to;
//   String? get thumbnail => _thumbnail;
//   String? get desc => _desc;
//   num? get price => _price;
//   String? get currCode => _currCode;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['title'] = _title;
//     map['from'] = _from;
//     map['to'] = _to;
//     map['thumbnail'] = _thumbnail;
//     map['desc'] = _desc;
//     map['price'] = _price;
//     map['currCode'] = _currCode;
//     return map;
//   }
//
// }
//
// /// id : "40"
// /// title : "Rendezvous Hotels"
// /// slug : "https://demotravels.com/api/hotels/singapore/singapore/Rendezvous-Hotels?&checkin=10/08/2022&checkout=11/08/2022&adults=2&child=0"
// /// thumbnail : "https://demotravels.com/api/uploads/images/hotels/slider/thumbs/75043_1.jpg"
// /// stars : "<i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i><i class='fa fa-star-o'></i>"
// /// starsCount : "2"
// /// location : "Singapore"
// /// desc : "Rendezvous Hotel Singapore is located in the Arts and Heritage District, within 3 km (0.2 mi) of the Singapore National Museum, Singapore Art Museum, and Singapore Management University. The Dhoby Ghaut MRT (Mass Rapid Transit) station is a five-minute walk, and Orchard Road shops are a 10-to-15-minute walk. Hotel Features. The exterior of the building combines history and sophistication, while the interior offers an art-infused experience and a unique aesthetic. The hotel offers an outdoor pool, and a fitness center. Public areas and all guestrooms are nonsmoking. Straits Cafe@Rendezvous offers buffet and a la carte dining. Room service is available around the clock. A lobby bar and a gourmet food court are also on site. The hotel offers a concierge desk, a multilingual staff, and business services. Guestrooms. The air-conditioned guestrooms feature cable TV, pay movies, and in-room safes. Wireless and wired high-speed Internet access are available for a surcharge. Minibars and coffee/tea makers are also included. Bathrooms offer shower/tub combinations, handheld showers, and telephones. Wake-up calls are provided upon request"
// /// amenities : [{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/522827_airport.png","name":"Airport Transport"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/593292_receptionist.png","name":"Business Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/920288_wheelchar.png","name":"Disabled Facilities"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/78888_club.png","name":"Night Club"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/813018_laundry.png","name":"Laundry Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/53193_858245_wifi.png","name":"Wi-Fi Internet"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/906341_bar.png","name":"Bar Lounge"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/926605_811401_poll.png","name":"Swimming Pool"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/6348_541779_parking.png","name":"Inside Parking"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/117737_653168_busstation.png","name":"Shuttle Bus Service"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/403809_764557_fitness.png","name":"Fitness Center"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/308869_654419_spa.png","name":"SPA"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/124634_ac.png","name":"Air Conditioner"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/524780_card.png","name":"Cards Accepted"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/999481_elevator.png","name":"Elevator"},{"icon":"https://demotravels.com/api/uploads/images/hotels/amenities/179352_pet.png","name":"Pets Allowed"}]
// /// avgReviews : {"clean":0,"comfort":0,"location":0,"facilities":0,"staff":0,"totalReviews":0,"overall":0}
// /// latitude : "1.354313975537631"
// /// longitude : "103.81743274072267"
// /// discount : ""
// /// address : "Rendezvous Hotel Singapore by Far East Hospitality Singapore"
// /// price : 85
// /// currCode : "usd"
//
// FeaturedHotels featuredHotelsFromJson(String str) => FeaturedHotels.fromJson(json.decode(str));
// String featuredHotelsToJson(FeaturedHotels data) => json.encode(data.toJson());
// class FeaturedHotels {
//   FeaturedHotels({
//       String? id,
//       String? title,
//       String? slug,
//       String? thumbnail,
//       String? stars,
//       String? starsCount,
//       String? location,
//       String? desc,
//       List<Amenities>? amenities,
//       AvgReviews? avgReviews,
//       String? latitude,
//       String? longitude,
//       String? discount,
//       String? address,
//       num? price,
//       String? currCode,}){
//     _id = id;
//     _title = title;
//     _slug = slug;
//     _thumbnail = thumbnail;
//     _stars = stars;
//     _starsCount = starsCount;
//     _location = location;
//     _desc = desc;
//     _amenities = amenities;
//     _avgReviews = avgReviews;
//     _latitude = latitude;
//     _longitude = longitude;
//     _discount = discount;
//     _address = address;
//     _price = price;
//     _currCode = currCode;
// }
//
//   FeaturedHotels.fromJson(dynamic json) {
//     _id = json['id'];
//     _title = json['title'];
//     _slug = json['slug'];
//     _thumbnail = json['thumbnail'];
//     _stars = json['stars'];
//     _starsCount = json['starsCount'];
//     _location = json['location'];
//     _desc = json['desc'];
//     if (json['amenities'] != null) {
//       _amenities = [];
//       json['amenities'].forEach((v) {
//         _amenities?.add(Amenities.fromJson(v));
//       });
//     }
//     _avgReviews = json['avgReviews'] != null ? AvgReviews.fromJson(json['avgReviews']) : null;
//     _latitude = json['latitude'];
//     _longitude = json['longitude'];
//     _discount = json['discount'];
//     _address = json['address'];
//     _price = json['price'];
//     _currCode = json['currCode'];
//   }
//   String? _id;
//   String? _title;
//   String? _slug;
//   String? _thumbnail;
//   String? _stars;
//   String? _starsCount;
//   String? _location;
//   String? _desc;
//   List<Amenities>? _amenities;
//   AvgReviews? _avgReviews;
//   String? _latitude;
//   String? _longitude;
//   String? _discount;
//   String? _address;
//   num? _price;
//   String? _currCode;
// FeaturedHotels copyWith({  String? id,
//   String? title,
//   String? slug,
//   String? thumbnail,
//   String? stars,
//   String? starsCount,
//   String? location,
//   String? desc,
//   List<Amenities>? amenities,
//   AvgReviews? avgReviews,
//   String? latitude,
//   String? longitude,
//   String? discount,
//   String? address,
//   num? price,
//   String? currCode,
// }) => FeaturedHotels(  id: id ?? _id,
//   title: title ?? _title,
//   slug: slug ?? _slug,
//   thumbnail: thumbnail ?? _thumbnail,
//   stars: stars ?? _stars,
//   starsCount: starsCount ?? _starsCount,
//   location: location ?? _location,
//   desc: desc ?? _desc,
//   amenities: amenities ?? _amenities,
//   avgReviews: avgReviews ?? _avgReviews,
//   latitude: latitude ?? _latitude,
//   longitude: longitude ?? _longitude,
//   discount: discount ?? _discount,
//   address: address ?? _address,
//   price: price ?? _price,
//   currCode: currCode ?? _currCode,
// );
//   String? get id => _id;
//   String? get title => _title;
//   String? get slug => _slug;
//   String? get thumbnail => _thumbnail;
//   String? get stars => _stars;
//   String? get starsCount => _starsCount;
//   String? get location => _location;
//   String? get desc => _desc;
//   List<Amenities>? get amenities => _amenities;
//   AvgReviews? get avgReviews => _avgReviews;
//   String? get latitude => _latitude;
//   String? get longitude => _longitude;
//   String? get discount => _discount;
//   String? get address => _address;
//   num? get price => _price;
//   String? get currCode => _currCode;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['title'] = _title;
//     map['slug'] = _slug;
//     map['thumbnail'] = _thumbnail;
//     map['stars'] = _stars;
//     map['starsCount'] = _starsCount;
//     map['location'] = _location;
//     map['desc'] = _desc;
//     if (_amenities != null) {
//       map['amenities'] = _amenities?.map((v) => v.toJson()).toList();
//     }
//     if (_avgReviews != null) {
//       map['avgReviews'] = _avgReviews?.toJson();
//     }
//     map['latitude'] = _latitude;
//     map['longitude'] = _longitude;
//     map['discount'] = _discount;
//     map['address'] = _address;
//     map['price'] = _price;
//     map['currCode'] = _currCode;
//     return map;
//   }
//
// }
//
// /// clean : 0
// /// comfort : 0
// /// location : 0
// /// facilities : 0
// /// staff : 0
// /// totalReviews : 0
// /// overall : 0
//
// /*
// AvgReviews avgReviewsFromJson(String str) => AvgReviews.fromJson(json.decode(str));
// String avgReviewsToJson(AvgReviews data) => json.encode(data.toJson());
// class AvgReviews {
//   AvgReviews({
//       num? clean,
//       num? comfort,
//       num? location,
//       num? facilities,
//       num? staff,
//       num? totalReviews,
//       num? overall,}){
//     _clean = clean;
//     _comfort = comfort;
//     _location = location;
//     _facilities = facilities;
//     _staff = staff;
//     _totalReviews = totalReviews;
//     _overall = overall;
// }
//
//   AvgReviews.fromJson(dynamic json) {
//     _clean = json['clean'];
//     _comfort = json['comfort'];
//     _location = json['location'];
//     _facilities = json['facilities'];
//     _staff = json['staff'];
//     _totalReviews = json['totalReviews'];
//     _overall = json['overall'];
//   }
//   num? _clean;
//   num? _comfort;
//   num? _location;
//   num? _facilities;
//   num? _staff;
//   num? _totalReviews;
//   num? _overall;
// AvgReviews copyWith({  num? clean,
//   num? comfort,
//   num? location,
//   num? facilities,
//   num? staff,
//   num? totalReviews,
//   num? overall,
// }) => AvgReviews(  clean: clean ?? _clean,
//   comfort: comfort ?? _comfort,
//   location: location ?? _location,
//   facilities: facilities ?? _facilities,
//   staff: staff ?? _staff,
//   totalReviews: totalReviews ?? _totalReviews,
//   overall: overall ?? _overall,
// );
//   num? get clean => _clean;
//   num? get comfort => _comfort;
//   num? get location => _location;
//   num? get facilities => _facilities;
//   num? get staff => _staff;
//   num? get totalReviews => _totalReviews;
//   num? get overall => _overall;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['clean'] = _clean;
//     map['comfort'] = _comfort;
//     map['location'] = _location;
//     map['facilities'] = _facilities;
//     map['staff'] = _staff;
//     map['totalReviews'] = _totalReviews;
//     map['overall'] = _overall;
//     return map;
//   }
//
// }
// */
//
// /// icon : "https://demotravels.com/api/uploads/images/hotels/amenities/522827_airport.png"
// /// name : "Airport Transport"
//
// Amenities amenitiesFromJson(String str) => Amenities.fromJson(json.decode(str));
// String amenitiesToJson(Amenities data) => json.encode(data.toJson());
// class Amenities {
//   Amenities({
//       String? icon,
//       String? name,}){
//     _icon = icon;
//     _name = name;
// }
//
//   Amenities.fromJson(dynamic json) {
//     _icon = json['icon'];
//     _name = json['name'];
//   }
//   String? _icon;
//   String? _name;
// Amenities copyWith({  String? icon,
//   String? name,
// }) => Amenities(  icon: icon ?? _icon,
//   name: name ?? _name,
// );
//   String? get icon => _icon;
//   String? get name => _name;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['icon'] = _icon;
//     map['name'] = _name;
//     return map;
//   }
//
// }
//
// /// social_id : "9"
// /// social_name : "Facebook"
// /// social_link : "https://www.facebook.com/travelbusiness"
// /// social_position : "footer"
// /// social_order : "1"
// /// status : true
// /// social_icon : "slufm6otpasooc.png"
//
// Social socialFromJson(String str) => Social.fromJson(json.decode(str));
// String socialToJson(Social data) => json.encode(data.toJson());
// class Social {
//   Social({
//       String? socialId,
//       String? socialName,
//       String? socialLink,
//       String? socialPosition,
//       String? socialOrder,
//       bool? status,
//       String? socialIcon,}){
//     _socialId = socialId;
//     _socialName = socialName;
//     _socialLink = socialLink;
//     _socialPosition = socialPosition;
//     _socialOrder = socialOrder;
//     _status = status;
//     _socialIcon = socialIcon;
// }
//
//   Social.fromJson(dynamic json) {
//     _socialId = json['social_id'];
//     _socialName = json['social_name'];
//     _socialLink = json['social_link'];
//     _socialPosition = json['social_position'];
//     _socialOrder = json['social_order'];
//     _status = json['status'];
//     _socialIcon = json['social_icon'];
//   }
//   String? _socialId;
//   String? _socialName;
//   String? _socialLink;
//   String? _socialPosition;
//   String? _socialOrder;
//   bool? _status;
//   String? _socialIcon;
// Social copyWith({  String? socialId,
//   String? socialName,
//   String? socialLink,
//   String? socialPosition,
//   String? socialOrder,
//   bool? status,
//   String? socialIcon,
// }) => Social(  socialId: socialId ?? _socialId,
//   socialName: socialName ?? _socialName,
//   socialLink: socialLink ?? _socialLink,
//   socialPosition: socialPosition ?? _socialPosition,
//   socialOrder: socialOrder ?? _socialOrder,
//   status: status ?? _status,
//   socialIcon: socialIcon ?? _socialIcon,
// );
//   String? get socialId => _socialId;
//   String? get socialName => _socialName;
//   String? get socialLink => _socialLink;
//   String? get socialPosition => _socialPosition;
//   String? get socialOrder => _socialOrder;
//   bool? get status => _status;
//   String? get socialIcon => _socialIcon;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['social_id'] = _socialId;
//     map['social_name'] = _socialName;
//     map['social_link'] = _socialLink;
//     map['social_position'] = _socialPosition;
//     map['social_order'] = _socialOrder;
//     map['status'] = _status;
//     map['social_icon'] = _socialIcon;
//     return map;
//   }
//
// }
//
// /// appname : "PHPTRAVELS"
// /// site_url : "https://www.phptravels.net"
// /// offline : "0"
// /// offline_msg : "Our website is offline currently please visit us back soon."
// /// restrict_website : false
// /// allow_registration : true
// /// allow_agent_registration : true
// /// suppliers_registration : true
// /// gmap_key : "AIzaSyDk_iQ6QWOTHW-TWoXSFLwbcnhaxlcnXXk"
// /// defaultbool_language : "en"
// /// multi_currency : true
// /// multi_language : true
// /// currency_code : "USD"
// /// copyright : "All Rights Reserved by PHPTRAVELS"
// /// email : "info@travelagency.com"
// /// phone : "+1-234-56789"
// /// address : "1355 Market St, Suite 900\r\n<br> San Francisco, United States \r\n"
// /// meta_title : "PHPTRAVELS | Travel Technology Partner"
// /// meta_keywords : "php travels script, php hotels booking script, php reservation system"
// /// meta_description : "php travels is complete booking and reservation system provides complete solution for travel agency"
//
// App appFromJson(String str) => App.fromJson(json.decode(str));
// String appToJson(App data) => json.encode(data.toJson());
// class App {
//   App({
//       String? appname,
//       String? siteUrl,
//       String? offline,
//       String? offlineMsg,
//       bool? restrictWebsite,
//       bool? allowRegistration,
//       bool? allowAgentRegistration,
//       bool? suppliersRegistration,
//       String? gmapKey,
//       String? defaultboolLanguage,
//       bool? multiCurrency,
//       bool? multiLanguage,
//       String? currencyCode,
//       String? copyright,
//       String? email,
//       String? phone,
//       String? address,
//       String? metaTitle,
//       String? metaKeywords,
//       String? metaDescription,}){
//     _appname = appname;
//     _siteUrl = siteUrl;
//     _offline = offline;
//     _offlineMsg = offlineMsg;
//     _restrictWebsite = restrictWebsite;
//     _allowRegistration = allowRegistration;
//     _allowAgentRegistration = allowAgentRegistration;
//     _suppliersRegistration = suppliersRegistration;
//     _gmapKey = gmapKey;
//     _defaultboolLanguage = defaultboolLanguage;
//     _multiCurrency = multiCurrency;
//     _multiLanguage = multiLanguage;
//     _currencyCode = currencyCode;
//     _copyright = copyright;
//     _email = email;
//     _phone = phone;
//     _address = address;
//     _metaTitle = metaTitle;
//     _metaKeywords = metaKeywords;
//     _metaDescription = metaDescription;
// }
//
//   App.fromJson(dynamic json) {
//     _appname = json['appname'];
//     _siteUrl = json['site_url'];
//     _offline = json['offline'];
//     _offlineMsg = json['offline_msg'];
//     _restrictWebsite = json['restrict_website'];
//     _allowRegistration = json['allow_registration'];
//     _allowAgentRegistration = json['allow_agent_registration'];
//     _suppliersRegistration = json['suppliers_registration'];
//     _gmapKey = json['gmap_key'];
//     _defaultboolLanguage = json['defaultbool_language'];
//     _multiCurrency = json['multi_currency'];
//     _multiLanguage = json['multi_language'];
//     _currencyCode = json['currency_code'];
//     _copyright = json['copyright'];
//     _email = json['email'];
//     _phone = json['phone'];
//     _address = json['address'];
//     _metaTitle = json['meta_title'];
//     _metaKeywords = json['meta_keywords'];
//     _metaDescription = json['meta_description'];
//   }
//   String? _appname;
//   String? _siteUrl;
//   String? _offline;
//   String? _offlineMsg;
//   bool? _restrictWebsite;
//   bool? _allowRegistration;
//   bool? _allowAgentRegistration;
//   bool? _suppliersRegistration;
//   String? _gmapKey;
//   String? _defaultboolLanguage;
//   bool? _multiCurrency;
//   bool? _multiLanguage;
//   String? _currencyCode;
//   String? _copyright;
//   String? _email;
//   String? _phone;
//   String? _address;
//   String? _metaTitle;
//   String? _metaKeywords;
//   String? _metaDescription;
// App copyWith({  String? appname,
//   String? siteUrl,
//   String? offline,
//   String? offlineMsg,
//   bool? restrictWebsite,
//   bool? allowRegistration,
//   bool? allowAgentRegistration,
//   bool? suppliersRegistration,
//   String? gmapKey,
//   String? defaultboolLanguage,
//   bool? multiCurrency,
//   bool? multiLanguage,
//   String? currencyCode,
//   String? copyright,
//   String? email,
//   String? phone,
//   String? address,
//   String? metaTitle,
//   String? metaKeywords,
//   String? metaDescription,
// }) => App(  appname: appname ?? _appname,
//   siteUrl: siteUrl ?? _siteUrl,
//   offline: offline ?? _offline,
//   offlineMsg: offlineMsg ?? _offlineMsg,
//   restrictWebsite: restrictWebsite ?? _restrictWebsite,
//   allowRegistration: allowRegistration ?? _allowRegistration,
//   allowAgentRegistration: allowAgentRegistration ?? _allowAgentRegistration,
//   suppliersRegistration: suppliersRegistration ?? _suppliersRegistration,
//   gmapKey: gmapKey ?? _gmapKey,
//   defaultboolLanguage: defaultboolLanguage ?? _defaultboolLanguage,
//   multiCurrency: multiCurrency ?? _multiCurrency,
//   multiLanguage: multiLanguage ?? _multiLanguage,
//   currencyCode: currencyCode ?? _currencyCode,
//   copyright: copyright ?? _copyright,
//   email: email ?? _email,
//   phone: phone ?? _phone,
//   address: address ?? _address,
//   metaTitle: metaTitle ?? _metaTitle,
//   metaKeywords: metaKeywords ?? _metaKeywords,
//   metaDescription: metaDescription ?? _metaDescription,
// );
//   String? get appname => _appname;
//   String? get siteUrl => _siteUrl;
//   String? get offline => _offline;
//   String? get offlineMsg => _offlineMsg;
//   bool? get restrictWebsite => _restrictWebsite;
//   bool? get allowRegistration => _allowRegistration;
//   bool? get allowAgentRegistration => _allowAgentRegistration;
//   bool? get suppliersRegistration => _suppliersRegistration;
//   String? get gmapKey => _gmapKey;
//   String? get defaultboolLanguage => _defaultboolLanguage;
//   bool? get multiCurrency => _multiCurrency;
//   bool? get multiLanguage => _multiLanguage;
//   String? get currencyCode => _currencyCode;
//   String? get copyright => _copyright;
//   String? get email => _email;
//   String? get phone => _phone;
//   String? get address => _address;
//   String? get metaTitle => _metaTitle;
//   String? get metaKeywords => _metaKeywords;
//   String? get metaDescription => _metaDescription;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['appname'] = _appname;
//     map['site_url'] = _siteUrl;
//     map['offline'] = _offline;
//     map['offline_msg'] = _offlineMsg;
//     map['restrict_website'] = _restrictWebsite;
//     map['allow_registration'] = _allowRegistration;
//     map['allow_agent_registration'] = _allowAgentRegistration;
//     map['suppliers_registration'] = _suppliersRegistration;
//     map['gmap_key'] = _gmapKey;
//     map['defaultbool_language'] = _defaultboolLanguage;
//     map['multi_currency'] = _multiCurrency;
//     map['multi_language'] = _multiLanguage;
//     map['currency_code'] = _currencyCode;
//     map['copyright'] = _copyright;
//     map['email'] = _email;
//     map['phone'] = _phone;
//     map['address'] = _address;
//     map['meta_title'] = _metaTitle;
//     map['meta_keywords'] = _metaKeywords;
//     map['meta_description'] = _metaDescription;
//     return map;
//   }
//
// }
//
// /// header : [{"Company":[{"href":"company","target":null,"title":"Company"},{"href":"about-us","target":null,"title":"About Us"},{"href":"terms-of-use","target":null,"title":"Terms of Use"},{"href":"faq","target":null,"title":"FAQ"},{"href":"how-to-book","target":null,"title":"How to Book"}]}]
// /// footer : [{"Company":[{"href":"company","target":null,"title":"Company"},{"href":"about-us","target":null,"title":"About Us"},{"href":"terms-of-use","target":null,"title":"Terms of Use"},{"href":"cookies-policy","target":null,"title":"Cookies policy"},{"href":"privacy-policy","target":null,"title":"Privacy Policy"}]},{"Support":[{"href":"supprt","target":null,"title":"Support"},{"href":"become-supplier","target":null,"title":"Become Supplier"},{"href":"faq","target":null,"title":"FAQ"},{"href":"booking-tips","target":null,"title":"Booking Tips"},{"href":"how-to-book","target":null,"title":"How to Book"}]},{"Services":[{"href":"services","target":null,"title":"Services"},{"href":"file-a-claim","target":null,"title":"File a claim"},{"href":"offers","target":null,"title":"Last minute deals"},{"href":"signup-supplier","target":null,"title":"Add your business"},{"href":"careers","target":null,"title":"Careers and Jobs"}]}]
//
// Cms cmsFromJson(String str) => Cms.fromJson(json.decode(str));
// String cmsToJson(Cms data) => json.encode(data.toJson());
// class Cms {
//   Cms({
//       List<Header>? header,
//       List<Footer>? footer,}){
//     _header = header;
//     _footer = footer;
// }
//
//   Cms.fromJson(dynamic json) {
//     if (json['header'] != null) {
//       _header = [];
//       json['header'].forEach((v) {
//         _header?.add(Header.fromJson(v));
//       });
//     }
//     if (json['footer'] != null) {
//       _footer = [];
//       json['footer'].forEach((v) {
//         _footer?.add(Footer.fromJson(v));
//       });
//     }
//   }
//   List<Header>? _header;
//   List<Footer>? _footer;
// Cms copyWith({  List<Header>? header,
//   List<Footer>? footer,
// }) => Cms(  header: header ?? _header,
//   footer: footer ?? _footer,
// );
//   List<Header>? get header => _header;
//   List<Footer>? get footer => _footer;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (_header != null) {
//       map['header'] = _header?.map((v) => v.toJson()).toList();
//     }
//     if (_footer != null) {
//       map['footer'] = _footer?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
//
// }
//
// /// Company : [{"href":"company","target":null,"title":"Company"},{"href":"about-us","target":null,"title":"About Us"},{"href":"terms-of-use","target":null,"title":"Terms of Use"},{"href":"cookies-policy","target":null,"title":"Cookies policy"},{"href":"privacy-policy","target":null,"title":"Privacy Policy"}]
//
// Footer footerFromJson(String str) => Footer.fromJson(json.decode(str));
// String footerToJson(Footer data) => json.encode(data.toJson());
// class Footer {
//   Footer({
//       List<Company>? company,}){
//     _company = company;
// }
//
//   Footer.fromJson(dynamic json) {
//     if (json['Company'] != null) {
//       _company = [];
//       json['Company'].forEach((v) {
//         _company?.add(Company.fromJson(v));
//       });
//     }
//   }
//   List<Company>? _company;
// Footer copyWith({  List<Company>? company,
// }) => Footer(  company: company ?? _company,
// );
//   List<Company>? get company => _company;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (_company != null) {
//       map['Company'] = _company?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
//
// }
//
// /// href : "company"
// /// target : null
// /// title : "Company"
//
// Company companyFromJson(String str) => Company.fromJson(json.decode(str));
// String companyToJson(Company data) => json.encode(data.toJson());
// class Company {
//   Company({
//       String? href,
//       dynamic target,
//       String? title,}){
//     _href = href;
//     _target = target;
//     _title = title;
// }
//
//   Company.fromJson(dynamic json) {
//     _href = json['href'];
//     _target = json['target'];
//     _title = json['title'];
//   }
//   String? _href;
//   dynamic _target;
//   String? _title;
// Company copyWith({  String? href,
//   dynamic target,
//   String? title,
// }) => Company(  href: href ?? _href,
//   target: target ?? _target,
//   title: title ?? _title,
// );
//   String? get href => _href;
//   dynamic get target => _target;
//   String? get title => _title;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['href'] = _href;
//     map['target'] = _target;
//     map['title'] = _title;
//     return map;
//   }
//
// }
//
// /// Company : [{"href":"company","target":null,"title":"Company"},{"href":"about-us","target":null,"title":"About Us"},{"href":"terms-of-use","target":null,"title":"Terms of Use"},{"href":"faq","target":null,"title":"FAQ"},{"href":"how-to-book","target":null,"title":"How to Book"}]
//
// Header headerFromJson(String str) => Header.fromJson(json.decode(str));
// String headerToJson(Header data) => json.encode(data.toJson());
// class Header {
//   Header({
//       List<Company>? company,}){
//     _company = company;
// }
//
//   Header.fromJson(dynamic json) {
//     if (json['Company'] != null) {
//       _company = [];
//       json['Company'].forEach((v) {
//         _company?.add(Company.fromJson(v));
//       });
//     }
//   }
//   List<Company>? _company;
// Header copyWith({  List<Company>? company,
// }) => Header(  company: company ?? _company,
// );
//   List<Company>? get company => _company;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (_company != null) {
//       map['Company'] = _company?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
//
// }
//
// /// href : "company"
// /// target : null
// /// title : "Company"
//
// // Company companyFromJson(String str) => Company.fromJson(json.decode(str));
// // String companyToJson(Company data) => json.encode(data.toJson());
// // class Company {
// //   Company({
// //       String? href,
// //       dynamic target,
// //       String? title,}){
// //     _href = href;
// //     _target = target;
// //     _title = title;
// // }
// //
// //   Company.fromJson(dynamic json) {
// //     _href = json['href'];
// //     _target = json['target'];
// //     _title = json['title'];
// //   }
// //   String? _href;
// //   dynamic _target;
// //   String? _title;
// // Company copyWith({  String? href,
// //   dynamic target,
// //   String? title,
// // }) => Company(  href: href ?? _href,
// //   target: target ?? _target,
// //   title: title ?? _title,
// // );
// //   String? get href => _href;
// //   dynamic get target => _target;
// //   String? get title => _title;
// //
// //   Map<String, dynamic> toJson() {
// //     final map = <String, dynamic>{};
// //     map['href'] = _href;
// //     map['target'] = _target;
// //     map['title'] = _title;
// //     return map;
// //   }
// //
// // }
//
// /// id : 1
// /// name : "Arabic"
// /// rtl : "RTL"
// /// country : "sa"
// /// defaultbool : false
//
// Languages languagesFromJson(String str) => Languages.fromJson(json.decode(str));
// String languagesToJson(Languages data) => json.encode(data.toJson());
// class Languages {
//   Languages({
//       num? id,
//       String? name,
//       String? rtl,
//       String? country,
//       bool? defaultbool,}){
//     _id = id;
//     _name = name;
//     _rtl = rtl;
//     _country = country;
//     _defaultbool = defaultbool;
// }
//
//   Languages.fromJson(dynamic json) {
//     _id = json['id'];
//     _name = json['name'];
//     _rtl = json['rtl'];
//     _country = json['country'];
//     _defaultbool = json['defaultbool'];
//   }
//   num? _id;
//   String? _name;
//   String? _rtl;
//   String? _country;
//   bool? _defaultbool;
// Languages copyWith({  num? id,
//   String? name,
//   String? rtl,
//   String? country,
//   bool? defaultbool,
// }) => Languages(  id: id ?? _id,
//   name: name ?? _name,
//   rtl: rtl ?? _rtl,
//   country: country ?? _country,
//   defaultbool: defaultbool ?? _defaultbool,
// );
//   num? get id => _id;
//   String? get name => _name;
//   String? get rtl => _rtl;
//   String? get country => _country;
//   bool? get defaultbool => _defaultbool;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['name'] = _name;
//     map['rtl'] = _rtl;
//     map['country'] = _country;
//     map['defaultbool'] = _defaultbool;
//     return map;
//   }
//
// }
//
// /// id : 1
// /// name : "USD"
// /// symbol : "$"
// /// code : "USD"
// /// rate : "1"
// /// decimals : "2"
// /// symbol_placement : "before"
// /// primary_order : "1"
// /// defaultbool : true
// /// status : true
//
// Currencies currenciesFromJson(String str) => Currencies.fromJson(json.decode(str));
// String currenciesToJson(Currencies data) => json.encode(data.toJson());
// class Currencies {
//   Currencies({
//       num? id,
//       String? name,
//       String? symbol,
//       String? code,
//       String? rate,
//       String? decimals,
//       String? symbolPlacement,
//       String? primaryOrder,
//       bool? defaultbool,
//       bool? status,}){
//     _id = id;
//     _name = name;
//     _symbol = symbol;
//     _code = code;
//     _rate = rate;
//     _decimals = decimals;
//     _symbolPlacement = symbolPlacement;
//     _primaryOrder = primaryOrder;
//     _defaultbool = defaultbool;
//     _status = status;
// }
//
//   Currencies.fromJson(dynamic json) {
//     _id = json['id'];
//     _name = json['name'];
//     _symbol = json['symbol'];
//     _code = json['code'];
//     _rate = json['rate'];
//     _decimals = json['decimals'];
//     _symbolPlacement = json['symbol_placement'];
//     _primaryOrder = json['primary_order'];
//     _defaultbool = json['defaultbool'];
//     _status = json['status'];
//   }
//   num? _id;
//   String? _name;
//   String? _symbol;
//   String? _code;
//   String? _rate;
//   String? _decimals;
//   String? _symbolPlacement;
//   String? _primaryOrder;
//   bool? _defaultbool;
//   bool? _status;
// Currencies copyWith({  num? id,
//   String? name,
//   String? symbol,
//   String? code,
//   String? rate,
//   String? decimals,
//   String? symbolPlacement,
//   String? primaryOrder,
//   bool? defaultbool,
//   bool? status,
// }) => Currencies(  id: id ?? _id,
//   name: name ?? _name,
//   symbol: symbol ?? _symbol,
//   code: code ?? _code,
//   rate: rate ?? _rate,
//   decimals: decimals ?? _decimals,
//   symbolPlacement: symbolPlacement ?? _symbolPlacement,
//   primaryOrder: primaryOrder ?? _primaryOrder,
//   defaultbool: defaultbool ?? _defaultbool,
//   status: status ?? _status,
// );
//   num? get id => _id;
//   String? get name => _name;
//   String? get symbol => _symbol;
//   String? get code => _code;
//   String? get rate => _rate;
//   String? get decimals => _decimals;
//   String? get symbolPlacement => _symbolPlacement;
//   String? get primaryOrder => _primaryOrder;
//   bool? get defaultbool => _defaultbool;
//   bool? get status => _status;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['name'] = _name;
//     map['symbol'] = _symbol;
//     map['code'] = _code;
//     map['rate'] = _rate;
//     map['decimals'] = _decimals;
//     map['symbol_placement'] = _symbolPlacement;
//     map['primary_order'] = _primaryOrder;
//     map['defaultbool'] = _defaultbool;
//     map['status'] = _status;
//     return map;
//   }
//
// }
//
// /// title : "newsletter"
// /// status : true
//
// Extras extrasFromJson(String str) => Extras.fromJson(json.decode(str));
// String extrasToJson(Extras data) => json.encode(data.toJson());
// class Extras {
//   Extras({
//       String? title,
//       bool? status,}){
//     _title = title;
//     _status = status;
// }
//
//   Extras.fromJson(dynamic json) {
//     _title = json['title'];
//     _status = json['status'];
//   }
//   String? _title;
//   bool? _status;
// Extras copyWith({  String? title,
//   bool? status,
// }) => Extras(  title: title ?? _title,
//   status: status ?? _status,
// );
//   String? get title => _title;
//   bool? get status => _status;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['title'] = _title;
//     map['status'] = _status;
//     return map;
//   }
//
// }
//
// /// title : "bank-transfer"
// /// c1 : "Western Bank CBP"
// /// c2 : "Gordan Road New Walton"
// /// c3 : "Account No. 5689 5547 236"
// /// c4 : "GBPXXX"
// /// c5 : "IBAN GBPXXXIP0024456987"
// /// dev : false
// /// dev_endpoint : null
// /// pro_endpoint : null
// /// order : "1"
//
// PaymentGateways paymentGatewaysFromJson(String str) => PaymentGateways.fromJson(json.decode(str));
// String paymentGatewaysToJson(PaymentGateways data) => json.encode(data.toJson());
// class PaymentGateways {
//   PaymentGateways({
//       String? title,
//       String? c1,
//       String? c2,
//       String? c3,
//       String? c4,
//       String? c5,
//       bool? dev,
//       dynamic devEndpoint,
//       dynamic proEndpoint,
//       String? order,}){
//     _title = title;
//     _c1 = c1;
//     _c2 = c2;
//     _c3 = c3;
//     _c4 = c4;
//     _c5 = c5;
//     _dev = dev;
//     _devEndpoint = devEndpoint;
//     _proEndpoint = proEndpoint;
//     _order = order;
// }
//
//   PaymentGateways.fromJson(dynamic json) {
//     _title = json['title'];
//     _c1 = json['c1'];
//     _c2 = json['c2'];
//     _c3 = json['c3'];
//     _c4 = json['c4'];
//     _c5 = json['c5'];
//     _dev = json['dev'];
//     _devEndpoint = json['dev_endpoint'];
//     _proEndpoint = json['pro_endpoint'];
//     _order = json['order'];
//   }
//   String? _title;
//   String? _c1;
//   String? _c2;
//   String? _c3;
//   String? _c4;
//   String? _c5;
//   bool? _dev;
//   dynamic _devEndpoint;
//   dynamic _proEndpoint;
//   String? _order;
// PaymentGateways copyWith({  String? title,
//   String? c1,
//   String? c2,
//   String? c3,
//   String? c4,
//   String? c5,
//   bool? dev,
//   dynamic devEndpoint,
//   dynamic proEndpoint,
//   String? order,
// }) => PaymentGateways(  title: title ?? _title,
//   c1: c1 ?? _c1,
//   c2: c2 ?? _c2,
//   c3: c3 ?? _c3,
//   c4: c4 ?? _c4,
//   c5: c5 ?? _c5,
//   dev: dev ?? _dev,
//   devEndpoint: devEndpoint ?? _devEndpoint,
//   proEndpoint: proEndpoint ?? _proEndpoint,
//   order: order ?? _order,
// );
//   String? get title => _title;
//   String? get c1 => _c1;
//   String? get c2 => _c2;
//   String? get c3 => _c3;
//   String? get c4 => _c4;
//   String? get c5 => _c5;
//   bool? get dev => _dev;
//   dynamic get devEndpoint => _devEndpoint;
//   dynamic get proEndpoint => _proEndpoint;
//   String? get order => _order;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['title'] = _title;
//     map['c1'] = _c1;
//     map['c2'] = _c2;
//     map['c3'] = _c3;
//     map['c4'] = _c4;
//     map['c5'] = _c5;
//     map['dev'] = _dev;
//     map['dev_endpoint'] = _devEndpoint;
//     map['pro_endpoint'] = _proEndpoint;
//     map['order'] = _order;
//     return map;
//   }
//
// }
//
// /// slide_id : "51"
// /// slide_position : "main"
// /// slide_title_text : null
// /// slide_desc_text : null
// /// slide_optional_text : null
// /// slide_link : null
// /// slide_link_name : null
// /// slide_image : "bg.jpg"
// /// slide_status : "Yes"
// /// slide_order : "1"
//
// Slider sliderFromJson(String str) => Slider.fromJson(json.decode(str));
// String sliderToJson(Slider data) => json.encode(data.toJson());
// class Slider {
//   Slider({
//       String? slideId,
//       String? slidePosition,
//       dynamic slideTitleText,
//       dynamic slideDescText,
//       dynamic slideOptionalText,
//       dynamic slideLink,
//       dynamic slideLinkName,
//       String? slideImage,
//       String? slideStatus,
//       String? slideOrder,}){
//     _slideId = slideId;
//     _slidePosition = slidePosition;
//     _slideTitleText = slideTitleText;
//     _slideDescText = slideDescText;
//     _slideOptionalText = slideOptionalText;
//     _slideLink = slideLink;
//     _slideLinkName = slideLinkName;
//     _slideImage = slideImage;
//     _slideStatus = slideStatus;
//     _slideOrder = slideOrder;
// }
//
//   Slider.fromJson(dynamic json) {
//     _slideId = json['slide_id'];
//     _slidePosition = json['slide_position'];
//     _slideTitleText = json['slide_title_text'];
//     _slideDescText = json['slide_desc_text'];
//     _slideOptionalText = json['slide_optional_text'];
//     _slideLink = json['slide_link'];
//     _slideLinkName = json['slide_link_name'];
//     _slideImage = json['slide_image'];
//     _slideStatus = json['slide_status'];
//     _slideOrder = json['slide_order'];
//   }
//   String? _slideId;
//   String? _slidePosition;
//   dynamic _slideTitleText;
//   dynamic _slideDescText;
//   dynamic _slideOptionalText;
//   dynamic _slideLink;
//   dynamic _slideLinkName;
//   String? _slideImage;
//   String? _slideStatus;
//   String? _slideOrder;
// Slider copyWith({  String? slideId,
//   String? slidePosition,
//   dynamic slideTitleText,
//   dynamic slideDescText,
//   dynamic slideOptionalText,
//   dynamic slideLink,
//   dynamic slideLinkName,
//   String? slideImage,
//   String? slideStatus,
//   String? slideOrder,
// }) => Slider(  slideId: slideId ?? _slideId,
//   slidePosition: slidePosition ?? _slidePosition,
//   slideTitleText: slideTitleText ?? _slideTitleText,
//   slideDescText: slideDescText ?? _slideDescText,
//   slideOptionalText: slideOptionalText ?? _slideOptionalText,
//   slideLink: slideLink ?? _slideLink,
//   slideLinkName: slideLinkName ?? _slideLinkName,
//   slideImage: slideImage ?? _slideImage,
//   slideStatus: slideStatus ?? _slideStatus,
//   slideOrder: slideOrder ?? _slideOrder,
// );
//   String? get slideId => _slideId;
//   String? get slidePosition => _slidePosition;
//   dynamic get slideTitleText => _slideTitleText;
//   dynamic get slideDescText => _slideDescText;
//   dynamic get slideOptionalText => _slideOptionalText;
//   dynamic get slideLink => _slideLink;
//   dynamic get slideLinkName => _slideLinkName;
//   String? get slideImage => _slideImage;
//   String? get slideStatus => _slideStatus;
//   String? get slideOrder => _slideOrder;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['slide_id'] = _slideId;
//     map['slide_position'] = _slidePosition;
//     map['slide_title_text'] = _slideTitleText;
//     map['slide_desc_text'] = _slideDescText;
//     map['slide_optional_text'] = _slideOptionalText;
//     map['slide_link'] = _slideLink;
//     map['slide_link_name'] = _slideLinkName;
//     map['slide_image'] = _slideImage;
//     map['slide_status'] = _slideStatus;
//     map['slide_order'] = _slideOrder;
//     return map;
//   }
//
// }
//
// /// name : "hotels"
// /// status : true
// /// order : "2"
//
// Modules modulesFromJson(String str) => Modules.fromJson(json.decode(str));
// String modulesToJson(Modules data) => json.encode(data.toJson());
// class Modules {
//   Modules({
//       String? name,
//       bool? status,
//       String? order,}){
//     _name = name;
//     _status = status;
//     _order = order;
// }
//
//   Modules.fromJson(dynamic json) {
//     _name = json['name'];
//     _status = json['status'];
//     _order = json['order'];
//   }
//   String? _name;
//   bool? _status;
//   String? _order;
// Modules copyWith({  String? name,
//   bool? status,
//   String? order,
// }) => Modules(  name: name ?? _name,
//   status: status ?? _status,
//   order: order ?? _order,
// );
//   String? get name => _name;
//   bool? get status => _status;
//   String? get order => _order;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['name'] = _name;
//     map['status'] = _status;
//     map['order'] = _order;
//     return map;
//   }
//
// }