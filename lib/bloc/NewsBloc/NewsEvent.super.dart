// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: return_of_invalid_type, constant_identifier_names, prefer_const_constructors_in_immutables, unnecessary_this, sort_unnamed_constructors_first, join_return_with_assignment, missing_return, lines_longer_than_80_chars

part of 'NewsEvent.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class NewsEvent extends Equatable {
  const NewsEvent(this._type);

  factory NewsEvent.fetchNews() = FetchNews.create;

  final _NewsEvent _type;

  /// The [when] method is the equivalent to pattern matching.
  /// Its prototype depends on the _NewsEvent [_type]s defined.
  R when<R extends Object>({@required R Function() fetchNews}) {
    assert(() {
      if (fetchNews == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _NewsEvent.FetchNews:
        return fetchNews();
    }
  }

  /// The [whenOrElse] method is equivalent to [when], but doesn't require
  /// all callbacks to be specified.
  ///
  /// On the other hand, it adds an extra orElse required parameter,
  /// for fallback behavior.
  R whenOrElse<R extends Object>(
      {R Function() fetchNews, @required R Function(NewsEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _NewsEvent.FetchNews:
        if (fetchNews == null) break;
        return fetchNews();
    }
    return orElse(this);
  }

  /// The [whenPartial] method is equivalent to [whenOrElse],
  /// but non-exhaustive.
  void whenPartial({void Function() fetchNews}) {
    assert(() {
      if (fetchNews == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _NewsEvent.FetchNews:
        if (fetchNews == null) break;
        return fetchNews();
    }
  }

  @override
  List<Object> get props => const [];
}

@immutable
abstract class FetchNews extends NewsEvent {
  const FetchNews() : super(_NewsEvent.FetchNews);

  factory FetchNews.create() = _FetchNewsImpl;
}

@immutable
class _FetchNewsImpl extends FetchNews {
  const _FetchNewsImpl() : super();

  @override
  String toString() => 'FetchNews()';
}
