import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HotelByHFirebaseUser {
  HotelByHFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

HotelByHFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HotelByHFirebaseUser> hotelByHFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HotelByHFirebaseUser>(
      (user) {
        currentUser = HotelByHFirebaseUser(user);
        return currentUser!;
      },
    );
