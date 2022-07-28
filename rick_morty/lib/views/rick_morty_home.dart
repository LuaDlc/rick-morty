import 'package:flutter/material.dart';
import 'package:rick_morty/models/paginated_app.dart';

import '../theme/app_colors.dart';

class RickMortyHome extends StatefulWidget {
  static const routeId = '/';
  const RickMortyHome({Key? key,}) : super(key: key) ;

  @override
  State<RickMortyHome> createState() => _RickMortyHome();
}

class _RickMortyHome extends State<RickMortyHome> {
  Future<PaginatedApp>? characters;

  @override
  void initState() {
    characters = Repository.getUpcomingCaracters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: AppColors.backgroundColor,
      body: FutureBuilder(
        future: character,
        builder: (_, AsyncSnapshot<PaginatedApp> snapshot) {
          if(snapshot.hasData) {
            final dataResults = snapshot.data!.results;

            return ListView.separated(
              itemBuilder: (_, index) {
                final character = dataResults[index];
                  
                  return Card(
                    color: AppColors.backTitleColor,
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.symmetric
                    (horizontal: 20,
                    vertical: 7.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.network()
                        ]
                      )
                    ),
                  );
                
              },
              separatorBuilder: (context, index) => const
              SizedBox(height: 16),
              itemCount: dataResults.length,
            );
          }
        return Container();
      },
      )
    );
  }
}

