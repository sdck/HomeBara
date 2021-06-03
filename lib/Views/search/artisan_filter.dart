import 'package:barahome/Themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';
import 'package:flutter/rendering.dart';

class FiltreSpecialiteArtisan extends StatefulWidget {
  FiltreSpecialiteArtisan({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _FiltreSpecialiteArtisanState createState() =>
      _FiltreSpecialiteArtisanState();
}

class _FiltreSpecialiteArtisanState extends State<FiltreSpecialiteArtisan> {
  List<Specialite> selectedSpecialiteList = [];

  void _openFilterDialog() async {
    await FilterListDialog.display<Specialite>(
      context,
      height: 480,
      borderRadius: 20,
      headlineText: "Selectionnez une Spécialité",
      searchFieldHintText: "Specialité",
      choiceChipLabel: (item) {
        return item.name;
      },
      listData: specialiteList,
      selectedListData: selectedSpecialiteList,
      onItemSearch: (list, text) {
        if (list != null) {
          if (list.any((element) =>
              element.name.toLowerCase().contains(text.toLowerCase()))) {
            return list
                .where((element) =>
                    element.name.toLowerCase().contains(text.toLowerCase()))
                .toList();
          }
        }
        return [];
      },
      validateSelectedItem: (list, val) {
        return list.contains(val);
      },
      onApplyButtonClick: (list) {
        setState(() {
          selectedSpecialiteList = List.from(list);
        });
        Navigator.pop(context);
      },
      choiceChipBuilder: (context, item, isSelected) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(
            color: isSelected ? Colors.blue[300] : Colors.grey[300],
          )),
          child: Text(
            item.name,
            style: TextStyle(
                color: isSelected ? Colors.blue[300] : Colors.grey[300]),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("specialite"),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextButton(
            onPressed: () async {
              var list = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FilterPage(
                    allTextList: specialiteList,
                    selectedSpecialiteList: selectedSpecialiteList,
                  ),
                ),
              );
              if (list != null) {
                setState(() {
                  selectedSpecialiteList = List.from(list);
                });
              }
            },
            child: Text(
              "Specialite Page",
              style: TextStyle(color: colorWhite),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(colorBlue3)),
          ),
          TextButton(
            onPressed: _openFilterDialog,
            child: Text(
              "Filter Dialog",
              style: TextStyle(color: colorWhite),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(colorBlue2)),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          selectedSpecialiteList == null || selectedSpecialiteList.length == 0
              ? Expanded(
                  child: Center(
                    child: Text("No text selected"),
                  ),
                )
              : Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(selectedSpecialiteList[index].name),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: selectedSpecialiteList.length),
                ),
        ],
      ),
    );
  }
}

class FilterPage extends StatelessWidget {
  const FilterPage({Key key, this.allTextList, this.selectedSpecialiteList})
      : super(key: key);
  final List<Specialite> allTextList;
  final List<Specialite> selectedSpecialiteList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Specialite List Page"),
      ),
      body: SafeArea(
        child: FilterListWidget<Specialite>(
          listData: specialiteList,
          selectedListData: selectedSpecialiteList,
          hideHeaderText: true,
          height: MediaQuery.of(context).size.height,
          onApplyButtonClick: (list) {
            Navigator.pop(context, list);
          },
          choiceChipLabel: (item) {
            return item.name;
          },
          choiceChipBuilder: (context, item, isSelected) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                color: isSelected ? colorBlue2 : colorBlue,
              )),
              child: Text(item.name),
            );
          },
          onItemSearch: (list, text) {
            if (list.any((element) =>
                element.name.toLowerCase().contains(text.toLowerCase()))) {
              return list
                  .where((element) =>
                      element.name.toLowerCase().contains(text.toLowerCase()))
                  .toList();
            }
            return [];
          },
          validateSelectedItem: (list, val) {
            return list.contains(val);
          },
        ),
      ),
    );
  }
}

class Specialite {
  final String name;
  final String description;
  Specialite({this.name, this.description});
}

List<Specialite> specialiteList = [
  Specialite(name: "Plommbier", description: "Mario et luigi"),
  Specialite(name: "Menuisier", description: "Jesus"),
  Specialite(name: "Maçon", description: "Jay z"),
  Specialite(name: "Couturier", description: "Dior"),
  Specialite(name: "Peintre", description: "Da Vinci"),
  Specialite(name: "Electricien", description: "Tesla"),
  Specialite(name: "Chauffeur", description: "Statham"),
];
