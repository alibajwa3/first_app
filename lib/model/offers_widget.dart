class OffersWidget {
  final String offerTitle;
  final int offerPrice;
  final String offerImagePath;
  
  OffersWidget(this.offerPrice, this.offerTitle, this.offerImagePath);
}

final OFFERS_LIST = [
  OffersWidget(35, "Creative Logo Required for company", "assets/images/logo_first_offer.png"),
  OffersWidget(35, "Illustration Required", "assets/images/logo_second_offer.png"),
  OffersWidget(35, "Animation Marker Required", "assets/images/logo_third_offer.png")
];