import 'package:flutter/material.dart';
import 'package:libraryproj/core/user_data.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType? type,
  Function(String)? onSubmit,
  Function(String)? onChange,
  FormFieldValidator<String>? validate,
  Function()? onTap,
  String? label,
  IconData? prefix,
  IconData? suffix,
  Function()? suffixPressed,
  bool isPassword = false,
  BuildContext? context,
}) =>
    TextFormField(
      onTap: onTap,
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      validator: validate,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: Theme.of(context!).textTheme.bodyText1!.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(onPressed: suffixPressed, icon: Icon(suffix))
            : null,
        border: OutlineInputBorder(),
      ),
    );

Widget myDivider() {
  return Container(
    height: 1.0,
    color: Colors.grey[300],
    width: double.infinity,
  );
}

Widget buildBookItem(var bookItem, context,
    {VoidCallback? onItemFavorited,
    VoidCallback? onAddToCart,
    ValueChanged<Map<String, dynamic>>? onItemSelected}) {
  print("imageUrl: ${bookItem["imageUrl"]}");
  return GestureDetector(
    onTap: () {
      if (onItemSelected != null) onItemSelected(bookItem);
    },
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Hero(
            tag: "image${bookItem['id']}",
            child: Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                image: DecorationImage(
                  image: NetworkImage(bookItem["imageUrl"]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    bookItem["title"],
                    overflow: TextOverflow.ellipsis,
                  ),
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  trailing:
                      !UserData().checkIfBookIsAlreadyBorrowed(bookItem['id'])
                          ? IconButton(
                              onPressed: () {
                                if (onAddToCart != null) onAddToCart();
                              },
                              icon: StreamBuilder<dynamic>(
                                  stream: UserData().cartStream,
                                  builder: (context, snapshot) {
                                    return Icon(
                                      Icons.shopping_cart,
                                      color: UserData()
                                              .checkIfBookInCart(bookItem['id'])
                                          ? Colors.red
                                          : Colors.grey,
                                    );
                                  }),
                            )
                          : null,
                ),
                UserData().checkIfBookIsAlreadyBorrowed(bookItem['id'])
                    ? ListTile(
                        title: Text(
                          "Expires in: ${UserData().getNumDaysOfBorrowedBooks(bookItem['id'])} days",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                      )
                    : Container(),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(
                    "Price: ${bookItem["itemPrice"]}\$",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                // ListTile(
                //   contentPadding: EdgeInsets.zero,
                //   dense: true,
                //   visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                //   title: Text(
                //     "Quantity: ${bookItem["quantity"]}",
                //     style: TextStyle(
                //       color: Colors.grey,
                //     ),
                //   ),
                // ),
                ListTile(
                  title: Text(
                    bookItem["author"],
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  contentPadding: EdgeInsets.zero,
                  trailing: IconButton(
                    onPressed: () {
                      if (onItemFavorited != null) onItemFavorited();
                    },
                    icon: StreamBuilder<dynamic>(
                      stream: UserData().favoritesStream,
                      builder: (context, snapshot) {
                        return Icon(
                          Icons.favorite,
                          color:
                              UserData().checkIfBookIsFavorite(bookItem['id'])
                                  ? Colors.red
                                  : Colors.grey,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
