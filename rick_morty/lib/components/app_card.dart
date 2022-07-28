import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    Key? key,
    required this.character,
  }) : super(key: key);

  final String character;

  @override
  Widget build(BuildContext context) {
    return Card(
        color:AppColors.descriptionColor,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.symmetric(
          horizontal: 28,
          vertical: 7.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: (
              Image.network(
                'https://rickandmortyapi.com/api/character/avatar/361.jpeg${character.backdropPath}'
                ),
                const Padding(
                  padding: EdgeInsets.symetric(
                    horizontal: 16,
                    vertical 12,
                  ),
                ),
                child: Text(
                  character.title.toUpperCase(),
                  style: TextStyle(
                    color: AppColors.backTitleColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 14.5,
                  ),
                ),
            ),
          ),
        ),
    );
  }
}