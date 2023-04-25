import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Colors.black26),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        // controller: controller,
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: Color.fromARGB(221, 112, 112, 112)),
          suffixIcon: GestureDetector(
                  child: Icon(Icons.close, color: Color.fromARGB(221, 112, 112, 112)),
                  onTap: () {
                    // controller.clear();
                    // widget.onChanged('');
                    // FocusScope.of(context).requestFocus(FocusNode());
                  },
                ),
            
          hintText: "Search Doctor",
          hintStyle:TextStyle(color: Color.fromARGB(221, 112, 112, 112)) ,
          border: InputBorder.none,
        ),
        // style: style,
        // onChanged: widget.onChanged,
      ),
    );
  }
}