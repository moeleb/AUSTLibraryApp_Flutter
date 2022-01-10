import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:libraryproj/core/models/user_info.dart';
import 'package:libraryproj/core/session.dart';
import 'package:libraryproj/core/user_data.dart';

class UserController {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('user_info');

  Future<void> fetchUserInfo() {
    print("checking userInfo");
    String? uid = Session().currentUser?.uuid ?? null;
    print("uuid: $uid");
    if (uid != null) {
      return collection.doc(uid).get().then((value) {
        print(value.data());
        if(value.data()!=null){
          Map<String, dynamic> userInfoMap = value.data() as Map<String, dynamic>;
          print("userInfo: $userInfoMap");
          UserInfo userInfo = UserInfo.fromJson(userInfoMap, uid);
          UserData().userInfo = userInfo;
          return;
        }

      });
    }
    return Future.value(null);
  }
  Future<void> addUserInfo(String address,String phoneNumber){
    String? uid = Session().currentUser?.uuid ?? null;
    if(uid!=null){

      Map<String,dynamic> dataInsert = {
        "phone_number": phoneNumber,
        "address":address
      };
      return collection.doc(uid).set(dataInsert).then((out){
        UserInfo userInfo = UserInfo(uid: uid,address: address,phoneNumber: phoneNumber);
        UserData().userInfo = userInfo;
      });
    }
    return Future.value(null);
  }

}
