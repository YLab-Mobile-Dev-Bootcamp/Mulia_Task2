import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task4_flutter/bloc/news_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc()..add(GetNews()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Headline News'),
        ),
        body: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            if (state is NewsSuccess) {
              return Center(
                child: ListView.builder(
                    itemCount: state.news.articles.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.fromLTRB(16, 4, 16, 4),
                          height: 220,
                          width: 200,
                          color: Colors.white,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                state.news.articles[index].title,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 5)),
                              Row(
                                //mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      state.news.articles[index].author,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Text(
                                    state.news.articles[index].publishedAt
                                        .toString(),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 5)),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  //https://protocoderspoint.com/failed-to-load-network-image-flutter-web/
                                  //flutter run -d chrome --web-renderer html
                                  Image(
                                    height: 110,
                                    width: 130,
                                    image: NetworkImage(
                                        state.news.articles[index].urlToImage),
                                  ),
                                  Padding(padding: EdgeInsets.only(right: 12)),
                                  Expanded(
                                    child: Text(
                                      state.news.articles[index].description,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ));
                    }),
              );
            } else if (state is NewsLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Center(
                child: Text("Oops sorry terjadi kesalahan"),
              );
            }
          },
        ),
      ),
    );
  }
}
