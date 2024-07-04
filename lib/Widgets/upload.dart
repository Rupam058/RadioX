// ignore_for_file: avoid_print

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:radiox/Components/api_services.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String uploadedImage = '';
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLoading
          ? const CircularProgressIndicator()
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uploadedImage == ""
                    ? const SizedBox()
                    : Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: NetworkImage(uploadedImage),
                        )),
                      ),
                ElevatedButton(
                  onPressed: () async {
                    final ImagePicker picker = ImagePicker();
                    final XFile? image = await picker.pickImage(
                      source: ImageSource.gallery,
                    );

                    if (image != null) {
                      setState(() {
                        isLoading = true;
                      });
                      Uint8List bytes = await image.readAsBytes();

                      ApiServices().uploadImage(bytes, image.name).then((value) {
                        print('RESPONSE: ${value.toString()}');
                        setState(() {
                          uploadedImage = value['location'];
                          isLoading = false;
                        });
                      }).onError((error, stackTrace) {
                        setState(() {
                          isLoading = true;
                        });
                        print('ERROR: ${error.toString()}');
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.background,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                    'Upload Image Here',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
