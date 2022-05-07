// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

// part of 'character_post_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// /// @nodoc
// class _$CharacterPostEventTearOff {
//   const _$CharacterPostEventTearOff();

// // ignore: unused_element
//   _Started started({int postId}) {
//     return _Started(
//       postId: postId,
//     );
//   }

// // ignore: unused_element
//   _Comment addComment({Comment comment}) {
//     return _Comment(
//       comment: comment,
//     );
//   }
// }

// /// @nodoc
// // ignore: unused_element
// const $CharacterPostEvent = _$CharacterPostEventTearOff();

// /// @nodoc
// mixin _$CharacterPostEvent {
//   @optionalTypeArgs
//   TResult when<TResult extends Object>({
//     @required TResult started(int postId),
//     @required TResult addComment(Comment comment),
//   });
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object>({
//     TResult started(int postId),
//     TResult addComment(Comment comment),
//     @required TResult orElse(),
//   });
//   @optionalTypeArgs
//   TResult map<TResult extends Object>({
//     @required TResult started(_Started value),
//     @required TResult addComment(_Comment value),
//   });
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object>({
//     TResult started(_Started value),
//     TResult addComment(_Comment value),
//     @required TResult orElse(),
//   });
// }

// /// @nodoc
// abstract class $CharacterPostEventCopyWith<$Res> {
//   factory $CharacterPostEventCopyWith(
//           CharacterPostEvent value, $Res Function(CharacterPostEvent) then) =
//       _$CharacterPostEventCopyWithImpl<$Res>;
// }

// /// @nodoc
// class _$CharacterPostEventCopyWithImpl<$Res>
//     implements $CharacterPostEventCopyWith<$Res> {
//   _$CharacterPostEventCopyWithImpl(this._value, this._then);

//   final CharacterPostEvent _value;
//   // ignore: unused_field
//   final $Res Function(CharacterPostEvent) _then;
// }

// /// @nodoc
// abstract class _$StartedCopyWith<$Res> {
//   factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
//       __$StartedCopyWithImpl<$Res>;
//   $Res call({int postId});
// }

// /// @nodoc
// class __$StartedCopyWithImpl<$Res>
//     extends _$CharacterPostEventCopyWithImpl<$Res>
//     implements _$StartedCopyWith<$Res> {
//   __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
//       : super(_value, (v) => _then(v as _Started));

//   @override
//   _Started get _value => super._value as _Started;

//   @override
//   $Res call({
//     Object postId = freezed,
//   }) {
//     return _then(_Started(
//       postId: postId == freezed ? _value.postId : postId as int,
//     ));
//   }
// }

// /// @nodoc
// class _$_Started implements _Started {
//   const _$_Started({this.postId});

//   @override
//   final int postId;

//   @override
//   String toString() {
//     return 'CharacterPostEvent.started(postId: $postId)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other is _Started &&
//             (identical(other.postId, postId) ||
//                 const DeepCollectionEquality().equals(other.postId, postId)));
//   }

//   @override
//   int get hashCode =>
//       runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

//   @JsonKey(ignore: true)
//   @override
//   _$StartedCopyWith<_Started> get copyWith =>
//       __$StartedCopyWithImpl<_Started>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object>({
//     @required TResult started(int postId),
//     @required TResult addComment(Comment comment),
//   }) {
//     assert(started != null);
//     assert(addComment != null);
//     return started(postId);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object>({
//     TResult started(int postId),
//     TResult addComment(Comment comment),
//     @required TResult orElse(),
//   }) {
//     assert(orElse != null);
//     if (started != null) {
//       return started(postId);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object>({
//     @required TResult started(_Started value),
//     @required TResult addComment(_Comment value),
//   }) {
//     assert(started != null);
//     assert(addComment != null);
//     return started(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object>({
//     TResult started(_Started value),
//     TResult addComment(_Comment value),
//     @required TResult orElse(),
//   }) {
//     assert(orElse != null);
//     if (started != null) {
//       return started(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Started implements CharacterPostEvent {
//   const factory _Started({int postId}) = _$_Started;

//   int get postId;
//   @JsonKey(ignore: true)
//   _$StartedCopyWith<_Started> get copyWith;
// }

// /// @nodoc
// abstract class _$CommentCopyWith<$Res> {
//   factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) then) =
//       __$CommentCopyWithImpl<$Res>;
//   $Res call({Comment comment});
// }

// /// @nodoc
// class __$CommentCopyWithImpl<$Res>
//     extends _$CharacterPostEventCopyWithImpl<$Res>
//     implements _$CommentCopyWith<$Res> {
//   __$CommentCopyWithImpl(_Comment _value, $Res Function(_Comment) _then)
//       : super(_value, (v) => _then(v as _Comment));

//   @override
//   _Comment get _value => super._value as _Comment;

//   @override
//   $Res call({
//     Object comment = freezed,
//   }) {
//     return _then(_Comment(
//       comment: comment == freezed ? _value.comment : comment as Comment,
//     ));
//   }
// }

// /// @nodoc
// class _$_Comment implements _Comment {
//   const _$_Comment({this.comment});

//   @override
//   final Comment comment;

//   @override
//   String toString() {
//     return 'CharacterPostEvent.addComment(comment: $comment)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other is _Comment &&
//             (identical(other.comment, comment) ||
//                 const DeepCollectionEquality().equals(other.comment, comment)));
//   }

//   @override
//   int get hashCode =>
//       runtimeType.hashCode ^ const DeepCollectionEquality().hash(comment);

//   @JsonKey(ignore: true)
//   @override
//   _$CommentCopyWith<_Comment> get copyWith =>
//       __$CommentCopyWithImpl<_Comment>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object>({
//     @required TResult started(int postId),
//     @required TResult addComment(Comment comment),
//   }) {
//     assert(started != null);
//     assert(addComment != null);
//     return addComment(comment);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object>({
//     TResult started(int postId),
//     TResult addComment(Comment comment),
//     @required TResult orElse(),
//   }) {
//     assert(orElse != null);
//     if (addComment != null) {
//       return addComment(comment);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object>({
//     @required TResult started(_Started value),
//     @required TResult addComment(_Comment value),
//   }) {
//     assert(started != null);
//     assert(addComment != null);
//     return addComment(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object>({
//     TResult started(_Started value),
//     TResult addComment(_Comment value),
//     @required TResult orElse(),
//   }) {
//     assert(orElse != null);
//     if (addComment != null) {
//       return addComment(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Comment implements CharacterPostEvent {
//   const factory _Comment({Comment comment}) = _$_Comment;

//   Comment get comment;
//   @JsonKey(ignore: true)
//   _$CommentCopyWith<_Comment> get copyWith;
// }

// /// @nodoc
// class _$CharacterPostStateTearOff {
//   const _$CharacterPostStateTearOff();

// // ignore: unused_element
//   _InitialState initial() {
//     return const _InitialState();
//   }

// // ignore: unused_element
//   _LoadingState loading() {
//     return const _LoadingState();
//   }

// // ignore: unused_element
//   _ErrorState error({@required String errorMessage}) {
//     return _ErrorState(
//       errorMessage: errorMessage,
//     );
//   }

// // ignore: unused_element
//   _DataState data({@required List<Comment> commentList}) {
//     return _DataState(
//       commentList: commentList,
//     );
//   }
// }

// /// @nodoc
// // ignore: unused_element
// const $CharacterPostState = _$CharacterPostStateTearOff();

// /// @nodoc
// mixin _$CharacterPostState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object>({
//     @required TResult initial(),
//     @required TResult loading(),
//     @required TResult error(String errorMessage),
//     @required TResult data(List<Comment> commentList),
//   });
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object>({
//     TResult initial(),
//     TResult loading(),
//     TResult error(String errorMessage),
//     TResult data(List<Comment> commentList),
//     @required TResult orElse(),
//   });
//   @optionalTypeArgs
//   TResult map<TResult extends Object>({
//     @required TResult initial(_InitialState value),
//     @required TResult loading(_LoadingState value),
//     @required TResult error(_ErrorState value),
//     @required TResult data(_DataState value),
//   });
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object>({
//     TResult initial(_InitialState value),
//     TResult loading(_LoadingState value),
//     TResult error(_ErrorState value),
//     TResult data(_DataState value),
//     @required TResult orElse(),
//   });
// }

// /// @nodoc
// abstract class $CharacterPostStateCopyWith<$Res> {
//   factory $CharacterPostStateCopyWith(
//           CharacterPostState value, $Res Function(CharacterPostState) then) =
//       _$CharacterPostStateCopyWithImpl<$Res>;
// }

// /// @nodoc
// class _$CharacterPostStateCopyWithImpl<$Res>
//     implements $CharacterPostStateCopyWith<$Res> {
//   _$CharacterPostStateCopyWithImpl(this._value, this._then);

//   final CharacterPostState _value;
//   // ignore: unused_field
//   final $Res Function(CharacterPostState) _then;
// }

// /// @nodoc
// abstract class _$InitialStateCopyWith<$Res> {
//   factory _$InitialStateCopyWith(
//           _InitialState value, $Res Function(_InitialState) then) =
//       __$InitialStateCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$InitialStateCopyWithImpl<$Res>
//     extends _$CharacterPostStateCopyWithImpl<$Res>
//     implements _$InitialStateCopyWith<$Res> {
//   __$InitialStateCopyWithImpl(
//       _InitialState _value, $Res Function(_InitialState) _then)
//       : super(_value, (v) => _then(v as _InitialState));

//   @override
//   _InitialState get _value => super._value as _InitialState;
// }

// /// @nodoc
// class _$_InitialState implements _InitialState {
//   const _$_InitialState();

//   @override
//   String toString() {
//     return 'CharacterPostState.initial()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) || (other is _InitialState);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object>({
//     @required TResult initial(),
//     @required TResult loading(),
//     @required TResult error(String errorMessage),
//     @required TResult data(List<Comment> commentList),
//   }) {
//     assert(initial != null);
//     assert(loading != null);
//     assert(error != null);
//     assert(data != null);
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object>({
//     TResult initial(),
//     TResult loading(),
//     TResult error(String errorMessage),
//     TResult data(List<Comment> commentList),
//     @required TResult orElse(),
//   }) {
//     assert(orElse != null);
//     if (initial != null) {
//       return initial();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object>({
//     @required TResult initial(_InitialState value),
//     @required TResult loading(_LoadingState value),
//     @required TResult error(_ErrorState value),
//     @required TResult data(_DataState value),
//   }) {
//     assert(initial != null);
//     assert(loading != null);
//     assert(error != null);
//     assert(data != null);
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object>({
//     TResult initial(_InitialState value),
//     TResult loading(_LoadingState value),
//     TResult error(_ErrorState value),
//     TResult data(_DataState value),
//     @required TResult orElse(),
//   }) {
//     assert(orElse != null);
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class _InitialState implements CharacterPostState {
//   const factory _InitialState() = _$_InitialState;
// }

// /// @nodoc
// abstract class _$LoadingStateCopyWith<$Res> {
//   factory _$LoadingStateCopyWith(
//           _LoadingState value, $Res Function(_LoadingState) then) =
//       __$LoadingStateCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$LoadingStateCopyWithImpl<$Res>
//     extends _$CharacterPostStateCopyWithImpl<$Res>
//     implements _$LoadingStateCopyWith<$Res> {
//   __$LoadingStateCopyWithImpl(
//       _LoadingState _value, $Res Function(_LoadingState) _then)
//       : super(_value, (v) => _then(v as _LoadingState));

//   @override
//   _LoadingState get _value => super._value as _LoadingState;
// }

// /// @nodoc
// class _$_LoadingState implements _LoadingState {
//   const _$_LoadingState();

//   @override
//   String toString() {
//     return 'CharacterPostState.loading()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) || (other is _LoadingState);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object>({
//     @required TResult initial(),
//     @required TResult loading(),
//     @required TResult error(String errorMessage),
//     @required TResult data(List<Comment> commentList),
//   }) {
//     assert(initial != null);
//     assert(loading != null);
//     assert(error != null);
//     assert(data != null);
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object>({
//     TResult initial(),
//     TResult loading(),
//     TResult error(String errorMessage),
//     TResult data(List<Comment> commentList),
//     @required TResult orElse(),
//   }) {
//     assert(orElse != null);
//     if (loading != null) {
//       return loading();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object>({
//     @required TResult initial(_InitialState value),
//     @required TResult loading(_LoadingState value),
//     @required TResult error(_ErrorState value),
//     @required TResult data(_DataState value),
//   }) {
//     assert(initial != null);
//     assert(loading != null);
//     assert(error != null);
//     assert(data != null);
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object>({
//     TResult initial(_InitialState value),
//     TResult loading(_LoadingState value),
//     TResult error(_ErrorState value),
//     TResult data(_DataState value),
//     @required TResult orElse(),
//   }) {
//     assert(orElse != null);
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoadingState implements CharacterPostState {
//   const factory _LoadingState() = _$_LoadingState;
// }

// /// @nodoc
// abstract class _$ErrorStateCopyWith<$Res> {
//   factory _$ErrorStateCopyWith(
//           _ErrorState value, $Res Function(_ErrorState) then) =
//       __$ErrorStateCopyWithImpl<$Res>;
//   $Res call({String errorMessage});
// }

// /// @nodoc
// class __$ErrorStateCopyWithImpl<$Res>
//     extends _$CharacterPostStateCopyWithImpl<$Res>
//     implements _$ErrorStateCopyWith<$Res> {
//   __$ErrorStateCopyWithImpl(
//       _ErrorState _value, $Res Function(_ErrorState) _then)
//       : super(_value, (v) => _then(v as _ErrorState));

//   @override
//   _ErrorState get _value => super._value as _ErrorState;

//   @override
//   $Res call({
//     Object errorMessage = freezed,
//   }) {
//     return _then(_ErrorState(
//       errorMessage: errorMessage == freezed
//           ? _value.errorMessage
//           : errorMessage as String,
//     ));
//   }
// }

// /// @nodoc
// class _$_ErrorState implements _ErrorState {
//   const _$_ErrorState({@required this.errorMessage})
//       : assert(errorMessage != null);

//   @override
//   final String errorMessage;

//   @override
//   String toString() {
//     return 'CharacterPostState.error(errorMessage: $errorMessage)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other is _ErrorState &&
//             (identical(other.errorMessage, errorMessage) ||
//                 const DeepCollectionEquality()
//                     .equals(other.errorMessage, errorMessage)));
//   }

//   @override
//   int get hashCode =>
//       runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

//   @JsonKey(ignore: true)
//   @override
//   _$ErrorStateCopyWith<_ErrorState> get copyWith =>
//       __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object>({
//     @required TResult initial(),
//     @required TResult loading(),
//     @required TResult error(String errorMessage),
//     @required TResult data(List<Comment> commentList),
//   }) {
//     assert(initial != null);
//     assert(loading != null);
//     assert(error != null);
//     assert(data != null);
//     return error(errorMessage);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object>({
//     TResult initial(),
//     TResult loading(),
//     TResult error(String errorMessage),
//     TResult data(List<Comment> commentList),
//     @required TResult orElse(),
//   }) {
//     assert(orElse != null);
//     if (error != null) {
//       return error(errorMessage);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object>({
//     @required TResult initial(_InitialState value),
//     @required TResult loading(_LoadingState value),
//     @required TResult error(_ErrorState value),
//     @required TResult data(_DataState value),
//   }) {
//     assert(initial != null);
//     assert(loading != null);
//     assert(error != null);
//     assert(data != null);
//     return error(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object>({
//     TResult initial(_InitialState value),
//     TResult loading(_LoadingState value),
//     TResult error(_ErrorState value),
//     TResult data(_DataState value),
//     @required TResult orElse(),
//   }) {
//     assert(orElse != null);
//     if (error != null) {
//       return error(this);
//     }
//     return orElse();
//   }
// }

// abstract class _ErrorState implements CharacterPostState {
//   const factory _ErrorState({@required String errorMessage}) = _$_ErrorState;

//   String get errorMessage;
//   @JsonKey(ignore: true)
//   _$ErrorStateCopyWith<_ErrorState> get copyWith;
// }

// /// @nodoc
// abstract class _$DataStateCopyWith<$Res> {
//   factory _$DataStateCopyWith(
//           _DataState value, $Res Function(_DataState) then) =
//       __$DataStateCopyWithImpl<$Res>;
//   $Res call({List<Comment> commentList});
// }

// /// @nodoc
// class __$DataStateCopyWithImpl<$Res>
//     extends _$CharacterPostStateCopyWithImpl<$Res>
//     implements _$DataStateCopyWith<$Res> {
//   __$DataStateCopyWithImpl(_DataState _value, $Res Function(_DataState) _then)
//       : super(_value, (v) => _then(v as _DataState));

//   @override
//   _DataState get _value => super._value as _DataState;

//   @override
//   $Res call({
//     Object commentList = freezed,
//   }) {
//     return _then(_DataState(
//       commentList: commentList == freezed
//           ? _value.commentList
//           : commentList as List<Comment>,
//     ));
//   }
// }

// /// @nodoc
// class _$_DataState implements _DataState {
//   const _$_DataState({@required this.commentList})
//       : assert(commentList != null);

//   @override
//   final List<Comment> commentList;

//   @override
//   String toString() {
//     return 'CharacterPostState.data(commentList: $commentList)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other is _DataState &&
//             (identical(other.commentList, commentList) ||
//                 const DeepCollectionEquality()
//                     .equals(other.commentList, commentList)));
//   }

//   @override
//   int get hashCode =>
//       runtimeType.hashCode ^ const DeepCollectionEquality().hash(commentList);

//   @JsonKey(ignore: true)
//   @override
//   _$DataStateCopyWith<_DataState> get copyWith =>
//       __$DataStateCopyWithImpl<_DataState>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object>({
//     @required TResult initial(),
//     @required TResult loading(),
//     @required TResult error(String errorMessage),
//     @required TResult data(List<Comment> commentList),
//   }) {
//     assert(initial != null);
//     assert(loading != null);
//     assert(error != null);
//     assert(data != null);
//     return data(commentList);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object>({
//     TResult initial(),
//     TResult loading(),
//     TResult error(String errorMessage),
//     TResult data(List<Comment> commentList),
//     @required TResult orElse(),
//   }) {
//     assert(orElse != null);
//     if (data != null) {
//       return data(commentList);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object>({
//     @required TResult initial(_InitialState value),
//     @required TResult loading(_LoadingState value),
//     @required TResult error(_ErrorState value),
//     @required TResult data(_DataState value),
//   }) {
//     assert(initial != null);
//     assert(loading != null);
//     assert(error != null);
//     assert(data != null);
//     return data(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object>({
//     TResult initial(_InitialState value),
//     TResult loading(_LoadingState value),
//     TResult error(_ErrorState value),
//     TResult data(_DataState value),
//     @required TResult orElse(),
//   }) {
//     assert(orElse != null);
//     if (data != null) {
//       return data(this);
//     }
//     return orElse();
//   }
// }

// abstract class _DataState implements CharacterPostState {
//   const factory _DataState({@required List<Comment> commentList}) =
//       _$_DataState;

//   List<Comment> get commentList;
//   @JsonKey(ignore: true)
//   _$DataStateCopyWith<_DataState> get copyWith;
// }
