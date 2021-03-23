class View {
  int id;
  String lan, des;

  View(this.lan, this.des);

  View.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lan = json['title'].toString(); //  post_header
    des = json['body'].toString(); //   post_body
  }
}