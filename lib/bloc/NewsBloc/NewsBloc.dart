
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/NewsBloc/NewsEvent.dart';
import 'package:news_app/bloc/NewsBloc/NewsState.dart';
import 'package:news_app/news_model.dart';
import 'package:news_app/repository.dart';

class NewsBloc extends Bloc<NewsEvent,NewsState>{
  
  NewsBloc() : super(NewsState.newsInitial());
  NewsRepository _newsRepository = NewsRepository();

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async*{
    
    yield*  event.when(fetchNews:()=> mapToFetchNews());
  }

  Stream<NewsState> mapToFetchNews()async*{
    yield NewsState.newsLoading();
   try{
     var request = await  _newsRepository.fetchNewsList();
     if(request.statusCode == 200){
       NewsResponse newsResponse = NewsResponse.fromJson(jsonDecode(request.body));
       yield NewsState.newsLoadingSuccessful(response:newsResponse );
     }else {
       yield NewsState.newsError(error: request.reasonPhrase);
     }

   }catch(e){
     yield NewsState.newsError(error: e.toString());
   }
    
    
  }
  
}