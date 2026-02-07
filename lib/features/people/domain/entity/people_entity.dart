import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class PeopleEntity  extends Equatable{
   int? userId;
    int? id;
    String? title;
    String? body;

    PeopleEntity({this.userId, this.id, this.title, this.body});
    
      @override
     
      List<Object?> get props => [userId, id, title, body];
}