import 'dart:convert';
import 'dart:io';

import 'package:http/testing.dart';
import 'package:http/http.dart' as http;

import 'data_source/mock_photo_data_source_impl.dart';
import 'data_source/photo_data_source.dart';
import 'model/photo.dart';
import 'repository/photo_repository.dart';

void main() async {
  final mockData =
      await File("lib/2025-04-04/solution2/mockData.json").readAsString();

  final mockClient = MockClient((request) async {
    return http.Response(
      mockData,
      200,
      headers: {'Content-Type': 'application/json'},
    );
  });

  PhotoDataSource photoDataSource = MockPhotoDataSourceImpl(
    mockClient: mockClient,
  );
  PhotoRepository photoRepository = PhotoRepository(
    photoDataSource: photoDataSource,
  );

  final List<Photo> fetchData = await photoRepository.getPhoto();

  for (Photo photo in fetchData) {
    print(photo);
  }
}
