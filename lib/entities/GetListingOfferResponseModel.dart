// import 'listing_model.dart';
//
// class GetListingListingOfferResponseModel {
//     int id;
//     int listingId;
//     double price;
//     List<ListingModel> offers;
//
//     GetListingListingOfferResponseModel({this.id = 0, required this.listingId, required this.price,  this.offers = const[]});
//
//     factory GetListingListingOfferResponseModel.fromJson(Map<String, dynamic> json) {
//         return GetListingListingOfferResponseModel(
//             id: json['id'],
//             listingId: json['listingId'],
//             price: json['price'],
//             offers: (json['admins'] as List).map((i) => MinfoUser.fromJson(i)).toList(),,
//             // listingModel: json['listing'] != null ? ListingModel.fromJson(json['listing']) : null,
//         );
//     }
//
//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = new Map<String, dynamic>();
//         data['id'] = this.id;
//         data['listingId'] = this.listingId;
//         data['price'] = this.price;
//         return data;
//     }
// }