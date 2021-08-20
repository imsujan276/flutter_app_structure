class User {
  int? id;
  String? uuid;
  String? fullName;
  String? email;
  String? avatar;
  String? thumbnailUrl;
  String? platform;

  User({
    this.id,
    this.uuid,
    this.fullName,
    this.email,
    this.avatar,
    this.thumbnailUrl,
    this.platform = "normal",
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uuid = json['uuid'];
    fullName = json['full_name'];
    email = json['email'];
    avatar = json['avatar'];
    thumbnailUrl = json['thumbnail_url'];
    platform = json['platform'] ?? "normal";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uuid'] = this.uuid;
    data['full_name'] = this.fullName;
    data['email'] = this.email;
    data['avatar'] = this.avatar;
    data['thumbnail_url'] = this.thumbnailUrl;
    data['platform'] = this.platform;
    return data;
  }
}
