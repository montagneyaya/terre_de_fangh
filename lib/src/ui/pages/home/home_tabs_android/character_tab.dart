part of 'package:terre_de_fangh/src/ui/pages/home/home_android.dart';

class CharacterTab extends StatefulWidget {
  const CharacterTab({super.key});

  @override
  State<CharacterTab> createState() => _CharacterTabState();
}

class _CharacterTabState extends State<CharacterTab> {
  @override
  Widget build(BuildContext context) {
    List<String> charactersFiles = [];
    List<Widget> charactersList = [];
    return Container(
      decoration: background(context, imageCharacters, BoxFit.contain),
      child: Column(
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              context.goNamed(RoutesPath.createCharacter);
            },
            label: const Text(LangComponents.addCharacter),
            icon: const Icon(Icons.add),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: FutureBuilder(
              future: Save('characters').readAllFile(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    charactersFiles = snapshot.data;
                    for (var fileElement in charactersFiles) {
                      Widget character = FutureBuilder(
                        future: Load(fileElement).readJson(),
                        builder: (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.connectionState == ConnectionState.done) {
                            Map jsonValue = jsonDecode(snapshot.data);
                            return InkWell(
                              onTap: () => context.goNamed(RoutesPath.characterSheet),
                              child: Card(
                                elevation: 0.0,
                                color: Theme.of(context).colorScheme.surfaceVariant,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        jsonValue['name_creature'] + ' ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                                      ),
                                      Text(
                                        jsonValue['gender'] + ' ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                                      ),
                                      Text(
                                        jsonValue['people'] + ' ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                                      ),
                                      Text(
                                        jsonValue['job'] + ' ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                                      ),
                                      Text(
                                        '${jsonValue['level']} ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text('Erreur : ${snapshot.error}');
                          }
                          return Text('Etat : ${snapshot.connectionState}');
                        },
                      );
                      charactersList.add(character);
                    }
                    return ListView(
                      shrinkWrap: true,
                      children: charactersList,
                    );
                  } else if (snapshot.hasError) {
                    return Text('Erreur : ${snapshot.error}');
                  }
                }
                return Text('Etat : ${snapshot.connectionState}');
              },
            ),
          ),
        ],
      ),
    );
  }
}
