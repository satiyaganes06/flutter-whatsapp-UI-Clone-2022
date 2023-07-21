class UserStatusModel{
  String name;
  String img;
  var date_time = DateTime.now();
  bool my_Status;
  int my_status_count;
  bool seen_Status;

  UserStatusModel(this.name, this.img,
                  this.my_Status, this.my_status_count, this.seen_Status);
}