import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Features/SearchView/Data/SearchModel.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:flutter/material.dart';

class Searchview extends StatefulWidget {
  const Searchview({super.key});

  @override
  State<Searchview> createState() => _SearchviewState();
}

class _SearchviewState extends State<Searchview> {
  final SearchController controller = SearchController();
  late List<Searchmodel> searchitems;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    searchitems = [
      Searchmodel(
        S.of(context).Carpenter,
        title: S.of(context).Ahmed,
        image:
            "https://th.bing.com/th/id/OIP.Blj2M36K5WYTyNd6v6Jz0QHaJf?rs=1&pid=ImgDetMain",
        distance: "12KM",
      ),
      Searchmodel(
        S.of(context).Plumber,
        title: S.of(context).khaled,
        image:
            "https://th.bing.com/th/id/OIP.UGlKxiZQylR3CnJIXSbFIAHaLL?rs=1&pid=ImgDetMain",
        distance: "4KM",
      ),
      Searchmodel(
        S.of(context).Electrician,
        title: S.of(context).Mohamed,
        image:
            "https://th.bing.com/th/id/OIP.leRaZskYpTKA55a0St0tZgHaJa?w=139&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        distance: "7KM",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).Search, style: AppStyles.text20(context)),
      ),
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SearchAnchor(
                builder: (context, controller) {
                  return SearchBar(
                    controller: controller,
                    hintText: S.of(context).Search,
                    leading: const Icon(Icons.search),
                    onTap: () {
                      controller.openView();
                    },
                  );
                },
                suggestionsBuilder: (context, controller) {
                  final query = controller.text.toLowerCase();
                  final filtersuggestions = searchitems
                      .where(
                        (suggestion) =>
                            suggestion.title.toLowerCase().contains(query),
                      )
                      .toList();
                  return List.generate(filtersuggestions.length, (index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            NetworkImage(filtersuggestions[index].image),
                      ),
                      title: Text(filtersuggestions[index].title),
                      subtitle: Text(filtersuggestions[index].subtitle),
                      trailing: Text(filtersuggestions[index].distance),
                    );
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}