class ListingLocation {
  String? id;
  String? count;
  String? name;
  String? parent;

  ListingLocation.fromJson(json) {
    id = json['id'].toString();
    count = json['count'].toString();
    name = json['name'].toString();
    parent = json['parent'].toString();
  }
}
