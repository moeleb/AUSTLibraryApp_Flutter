import 'package:cloud_firestore/cloud_firestore.dart';
class DataRepository {
  // 1
  final CollectionReference collection =
  FirebaseFirestore.instance.collection('book_collection');
  // 2
  Stream<QuerySnapshot> getStream() {

    return collection.snapshots();
  }
  // // 3
  // Future<DocumentReference> addPet(<> pet) {
  //   return collection.add(pet.toJson());
  // }
  // // 4
  // void updatePet(Pet pet) async {
  //   await collection.doc(pet.referenceId).update(pet.toJson());
  // }
  // // 5
  // void deletePet(Pet pet) async {
  //   await collection.doc(pet.referenceId).delete();
  // }

  Future<List<Map<String,dynamic>>> getBooks()async{
    List<Map<String,dynamic>> list = [];
    QuerySnapshot querySnapshot= await collection.get();
    for (int i = 0; i < querySnapshot.docs.length; i++) {
      Map<String,dynamic> book = querySnapshot.docs[i].data() as Map<String,dynamic>;
      print(book);
      list.add(book);

    }
    return list;
  }
}