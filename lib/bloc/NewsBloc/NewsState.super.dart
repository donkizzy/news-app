// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: return_of_invalid_type, constant_identifier_names, prefer_const_constructors_in_immutables, unnecessary_this, sort_unnamed_constructors_first, join_return_with_assignment, missing_return, lines_longer_than_80_chars

part of 'NewsState.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class NewsState extends Equatable {
  const NewsState(this._type);

  factory NewsState.newsInitial() = NewsInitial.create;

  factory NewsState.newsLoading() = NewsLoading.create;

  factory NewsState.newsLoadingSuccessful({@required NewsResponse response}) =
      NewsLoadingSuccessful.create;

  factory NewsState.newsError({@required String error}) = NewsError.create;

  final _NewsState _type;

  /// The [when] method is the equivalent to pattern matching.
  /// Its prototype depends on the _NewsState [_type]s defined.
  R when<R extends Object>(
      {@required R Function() newsInitial,
      @required R Function() newsLoading,
      @required R Function(NewsLoadingSuccessful) newsLoadingSuccessful,
      @required R Function(NewsError) newsError}) {
    assert(() {
      if (newsInitial == null ||
          newsLoading == null ||
          newsLoadingSuccessful == null ||
          newsError == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _NewsState.NewsInitial:
        return newsInitial();
      case _NewsState.NewsLoading:
        return newsLoading();
      case _NewsState.NewsLoadingSuccessful:
        return newsLoadingSuccessful(this as NewsLoadingSuccessful);
      case _NewsState.NewsError:
        return newsError(this as NewsError);
    }
  }

  /// The [whenOrElse] method is equivalent to [when], but doesn't require
  /// all callbacks to be specified.
  ///
  /// On the other hand, it adds an extra orElse required parameter,
  /// for fallback behavior.
  R whenOrElse<R extends Object>(
      {R Function() newsInitial,
      R Function() newsLoading,
      R Function(NewsLoadingSuccessful) newsLoadingSuccessful,
      R Function(NewsError) newsError,
      @required R Function(NewsState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _NewsState.NewsInitial:
        if (newsInitial == null) break;
        return newsInitial();
      case _NewsState.NewsLoading:
        if (newsLoading == null) break;
        return newsLoading();
      case _NewsState.NewsLoadingSuccessful:
        if (newsLoadingSuccessful == null) break;
        return newsLoadingSuccessful(this as NewsLoadingSuccessful);
      case _NewsState.NewsError:
        if (newsError == null) break;
        return newsError(this as NewsError);
    }
    return orElse(this);
  }

  /// The [whenPartial] method is equivalent to [whenOrElse],
  /// but non-exhaustive.
  void whenPartial(
      {void Function() newsInitial,
      void Function() newsLoading,
      void Function(NewsLoadingSuccessful) newsLoadingSuccessful,
      void Function(NewsError) newsError}) {
    assert(() {
      if (newsInitial == null &&
          newsLoading == null &&
          newsLoadingSuccessful == null &&
          newsError == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _NewsState.NewsInitial:
        if (newsInitial == null) break;
        return newsInitial();
      case _NewsState.NewsLoading:
        if (newsLoading == null) break;
        return newsLoading();
      case _NewsState.NewsLoadingSuccessful:
        if (newsLoadingSuccessful == null) break;
        return newsLoadingSuccessful(this as NewsLoadingSuccessful);
      case _NewsState.NewsError:
        if (newsError == null) break;
        return newsError(this as NewsError);
    }
  }

  @override
  List<Object> get props => const [];
}

@immutable
abstract class NewsInitial extends NewsState {
  const NewsInitial() : super(_NewsState.NewsInitial);

  factory NewsInitial.create() = _NewsInitialImpl;
}

@immutable
class _NewsInitialImpl extends NewsInitial {
  const _NewsInitialImpl() : super();

  @override
  String toString() => 'NewsInitial()';
}

@immutable
abstract class NewsLoading extends NewsState {
  const NewsLoading() : super(_NewsState.NewsLoading);

  factory NewsLoading.create() = _NewsLoadingImpl;
}

@immutable
class _NewsLoadingImpl extends NewsLoading {
  const _NewsLoadingImpl() : super();

  @override
  String toString() => 'NewsLoading()';
}

@immutable
abstract class NewsLoadingSuccessful extends NewsState {
  const NewsLoadingSuccessful({@required this.response})
      : super(_NewsState.NewsLoadingSuccessful);

  factory NewsLoadingSuccessful.create({@required NewsResponse response}) =
      _NewsLoadingSuccessfulImpl;

  final NewsResponse response;

  /// Creates a copy of this NewsLoadingSuccessful but with the given fields
  /// replaced with the new values.
  NewsLoadingSuccessful copyWith({NewsResponse response});
}

@immutable
class _NewsLoadingSuccessfulImpl extends NewsLoadingSuccessful {
  const _NewsLoadingSuccessfulImpl({@required this.response})
      : super(response: response);

  @override
  final NewsResponse response;

  @override
  _NewsLoadingSuccessfulImpl copyWith({Object response = superEnum}) =>
      _NewsLoadingSuccessfulImpl(
        response:
            response == superEnum ? this.response : response as NewsResponse,
      );
  @override
  String toString() => 'NewsLoadingSuccessful(response: ${this.response})';
  @override
  List<Object> get props => [response];
}

@immutable
abstract class NewsError extends NewsState {
  const NewsError({@required this.error}) : super(_NewsState.NewsError);

  factory NewsError.create({@required String error}) = _NewsErrorImpl;

  final String error;

  /// Creates a copy of this NewsError but with the given fields
  /// replaced with the new values.
  NewsError copyWith({String error});
}

@immutable
class _NewsErrorImpl extends NewsError {
  const _NewsErrorImpl({@required this.error}) : super(error: error);

  @override
  final String error;

  @override
  _NewsErrorImpl copyWith({Object error = superEnum}) => _NewsErrorImpl(
        error: error == superEnum ? this.error : error as String,
      );
  @override
  String toString() => 'NewsError(error: ${this.error})';
  @override
  List<Object> get props => [error];
}
