import 'package:news_app/news_model.dart';
import 'package:super_enum/super_enum.dart';

part 'NewsState.super.dart';
@superEnum
enum _NewsState {
  @object
  NewsInitial,
  @object
  NewsLoading,
  @Data(fields: [ DataField<NewsResponse>('response')])
  NewsLoadingSuccessful,
  @Data(fields: [DataField<String>('error')])
  NewsError
}
