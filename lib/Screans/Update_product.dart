import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:project/Services/update_product.dart';
import 'package:project/widgets/custom_Bottom.dart';
import 'package:project/widgets/custom_TextFild.dart';

// ignore: must_be_immutable
class UpdateProduct extends StatefulWidget {
  static String id = 'UpdateProduct';

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  String? title, image, description;
  dynamic price;
  Widget build(BuildContext context) {
    bool isLoading = false;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Update product',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 120),
                  CustomTextFild(
                      hintText: 'description',
                      onchanged: (data) {
                        description = data;
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFild(
                      hintText: 'title',
                      onchanged: (data) {
                        title = data;
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFild(
                      hintText: 'image',
                      onchanged: (data) {
                        image = data;
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFild(
                      inputType: TextInputType.number,
                      hintText: 'price',
                      onchanged: (data) {
                        price = data;
                      }),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomBottom(
                      ontap: () {
                        isLoading = true;
                        setState(() {});
                        try {
                          UpdateProductServices().UpdateProduct(
                              title: title!,
                              price: price!,
                              description: description!,
                              image: image!);
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text('success')));
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(e.toString())));
                        }
                        isLoading = false;
                        setState(() {});
                      },
                      NameOfBottom: 'Update')
                ],
              ),
            ),
          )),
    );
  }
}
