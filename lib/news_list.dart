
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/NewsBloc/NewsBloc.dart';
import 'package:news_app/bloc/NewsBloc/NewsEvent.dart';
import 'package:news_app/bloc/NewsBloc/NewsState.dart';

class NewsList extends StatefulWidget {
  const NewsList({Key key}) : super(key: key);

  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  NewsBloc _newsBloc ;
  @override
  void initState() {
   _newsBloc = NewsBloc();
   _newsBloc.add(NewsEvent.fetchNews());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('News App'),
      ),
      body: BlocBuilder(
        cubit: _newsBloc,
        builder: (BuildContext context, state) {
          if(state is NewsLoading){
            return Center(child: CircularProgressIndicator());
          }
          if(state is NewsError){
            return Text(state.error);
          }
          if(state is NewsLoadingSuccessful){
            return ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context,int index){
                  return ListTile(
                    leading: Image.network(state.response.articles[index].urlToImage),
                    title: Text(state.response.articles[index].title),
                    subtitle: Text(state.response.articles[index].description),
                  );
                });
          }
          return Container();
        },

      ),
    );
  }
}
