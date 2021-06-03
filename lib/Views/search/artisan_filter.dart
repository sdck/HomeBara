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
  List<String> SpecialiteList = [
    "Plommbier",
    "Menuisier",
    "Maçon",
    "Couturier",
    "Peintre",
    "Electricien",
    "Chauffeur",
    "Cuisinier"
  ];
  List<String> selectedSpecialiteList = [];

  void _openFilterDialog() async {
    await FilterListDialog.display(context,
        allTextList: SpecialiteList,
        height: 480,
        borderRadius: 20,
        headlineText: "Selectionnez une Spécialité",
        searchFieldHintText: "Specialité",
        selectedTextList: selectedSpecialiteList, onApplyButtonClick: (list) {
      if (list != null) {
        setState(() {
          selectedSpecialiteList = List.from(list);
        });
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("specialite"),
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
                          title: Text(selectedSpecialiteList[index]),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: selectedSpecialiteList.length),
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                onPressed: () async {
                  var list = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FilterPage(
                        allTextList: SpecialiteList,
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
                  style: TextStyle(color: Colors.white),
                ),
                color: colorBlue,
              ),
              FlatButton(
                onPressed: _openFilterDialog,
                child: Text(
                  "Filter Dialog",
                  style: TextStyle(color: colorWhite),
                ),
                color: colorBlue2,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FilterPage extends StatelessWidget {
  const FilterPage({Key key, this.allTextList}) : super(key: key);
  final List<String> allTextList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste Des Specialités"),
      ),
      body: SafeArea(
        child: FilterListWidget(
          allTextList: allTextList,
          height: MediaQuery.of(context).size.height,
          hideheaderText: true,
          onApplyButtonClick: (list) {
            Navigator.pop(context, list);
          },
        ),
      ),
    );
  }
}
