import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';
import '../models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String title, File file, PlaceLocation location) {
    final newPlace = Place(title: title, image: file, location: location);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
        (ref) => UserPlacesNotifier());
