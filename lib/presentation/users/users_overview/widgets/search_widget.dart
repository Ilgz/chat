import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchWidget extends HookWidget {
  const SearchWidget({Key? key,this.isSearchingInitial,required this.onChanged,this.onBackPressed}) : super(key: key);
  final ValueNotifier<bool>? isSearchingInitial;
  final Function(String) onChanged;
  final Function? onBackPressed;
  @override
  Widget build(BuildContext context) {
    final isSearching=isSearchingInitial ?? useState(false);
    final searchController=useTextEditingController();
    return Container(
        margin: const EdgeInsets.only(top: 10,bottom: 5),
        width: double.infinity,
        child: TextField(
          style: Theme.of(context).textTheme.bodyText1,
          controller: searchController,
          onChanged: (text) {
            if(!isSearching.value){
              isSearching.value=true;
            }
            onChanged(text);
            if(text.isEmpty){
              isSearching.value=false;
            }
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            hintText: "Поиск...",
            prefixIcon: isSearching.value
                ? IconButton(
                onPressed: () {
                  isSearching.value=false;
                  searchController.clear();
                  onBackPressed?.call();
                },
                icon: const Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.black,
                ))
                : const Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ));
  }
}
