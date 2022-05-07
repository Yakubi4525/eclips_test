// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:user_app/core/components/error_widget.dart';
// import 'package:user_app/core/components/loading_widget.dart';
// import 'package:user_app/core/theme/color_theme.dart';
// import 'package:user_app/core/theme/text_theme.dart';
// import 'package:user_app/features/user_list/domain/entetties/album.dart';
// import 'package:user_app/features/user_list/ui/character_album_screen/bloc/character_album_bloc.dart';
// import 'package:user_app/features/user_list/ui/character_album_screen/widgets/slider_view.dart';

// class CharacterAlbumScreen extends StatelessWidget {
//   final Album album;

//   const CharacterAlbumScreen({Key? key,required this.album}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CharacterAlbumBloc()
//         ..add(
//           CharacterAlbumEvent.started(albumId: album.id!),
//         ),
//       child: BlocConsumer<CharacterAlbumBloc, CharacterAlbumState>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           return state.maybeMap(
//             initial: (_) => const CustomLoaderWidget(),
//             loading: (_) => const CustomLoaderWidget(),
//             error: (_error) => CustomErrorWidget(error: _error.errorMessage),
//             data: (_data) => Scaffold(
//               appBar: AppBar(
//                 centerTitle: true,
//                 backgroundColor: ColorPalette.white,
//                 title: Text(
//                   "Album Info",
//                   style:
//                       TextThemes.headline2.copyWith(color: ColorPalette.black),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//               body: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     children: [
//                       const SizedBox(
//                         height: 16,
//                       ),
//                       Text(
//                         album.title!,
//                         style: TextThemes.headline2.copyWith(fontSize: 22),
//                       ),
//                       const SizedBox(
//                         height: 16,
//                       ),
//                       SizedBox(
//                         height: 300,
//                         width: double.infinity,
//                         child: SliderViewWidget(
//                           photoList: _data.photoList,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             orElse: () => Container(),
//           );
//         },
//       ),
//     );
//   }
// }
