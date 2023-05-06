// Project 7 - Build an Unsplash app with a search box, infinite scroll with Redux for state management

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'actions/index.dart';
import 'data/unsplash_api.dart';
import 'epics/app_epics.dart';
import 'models/index.dart';
import 'presentation/containers/index.dart';
import 'reducer/app_reducer.dart';

void main() async {
  await dotenv.load();
  final String accessKey = dotenv.env['UNSPLASH_ACCESS_KEY']!;
  final Client client = Client();
  final UnsplashApi api = UnsplashApi(client, accessKey);
  final AppEpics epic = AppEpics(api);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.call).call,
    ],
  );

  store.dispatch(GetImages.start(query: store.state.query, page: store.state.page));

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    final double height = MediaQuery.of(context).size.height;
    final double offset = _scrollController.position.pixels;
    final double maxScrollExtent = _scrollController.position.maxScrollExtent;

    if (store.state.hasMore && !store.state.isLoading && maxScrollExtent - offset < 3 * height) {
      store.dispatch(GetImages.start(query: store.state.query, page: store.state.page));
    }
  }

  void _search(String query) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    _scrollController.jumpTo(0);
    store.dispatch(GetImages.start(query: query, page: 1));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Unsplash App'),
          centerTitle: true,
          actions: <Widget>[
            IsLoadingContainer(builder: (BuildContext context, bool isLoading) {
              if (isLoading) {
                return const Center(
                  child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    ),
                  ),
                );
              } else {
                return Container();
              }
            })
          ],
        ),
        body: IsLoadingContainer(builder: (BuildContext context, bool isLoading) {
          return ImagesContainer(
            builder: (BuildContext context, List<Picture> images) {
              if (isLoading && images.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _searchController,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                              hintText: 'Search...',
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () => _searchController.clear(),
                              ),
                              border: const OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () => _search(_searchController.text),
                          child: const Text('search')),
                    ],
                  ),
                  Expanded(
                    flex: 4,
                    child: GridView.builder(
                      controller: _scrollController,
                      itemCount: images.length,
                      padding: const EdgeInsets.all(10),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 4,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final Picture picture = images[index];
                        return Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            GridTile(
                              child: Image.network(
                                picture.urls.regular,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: AlignmentDirectional.bottomCenter,
                                    end: AlignmentDirectional.topCenter,
                                    colors: <Color>[
                                      Colors.black45,
                                      Colors.black12,
                                    ],
                                  ),
                                ),
                                child: ListTile(
                                    title: Text(
                                      picture.user.username,
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                    trailing: CircleAvatar(
                                      backgroundImage: NetworkImage(picture.user.profileImage!.small!),
                                    )),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          );
        }));
  }
}
