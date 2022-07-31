class ProfilesModel {
  final String imageAssetPath;
  final String profileName;
  final String profileDescription;
  final int offerPrice;
  final int numberOfReviews;
  final String designation;
  final String location;
  ProfilesModel(this.imageAssetPath, this.profileName, this.profileDescription,
      this.offerPrice, this.numberOfReviews, this.designation, this.location);
}

final PROFILES_LIST = [
  ProfilesModel("assets/images/bruce.png", "Admasville", "I will design unique and clean logo", 45, 300, "Designer", "United States"),
  ProfilesModel("assets/images/maria.png", "Maria", "I am a Professional Logo & Graphic Designer", 45, 300, "Designer", "Dubai"),
];