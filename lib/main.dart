import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/bloc/cubit/search/search_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/routes/app_generator.dart';
import 'config/routes/app_routes.dart';
import 'config/theme/app_theme.dart';


void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const SearchApp());
}

class SearchApp extends StatelessWidget {
  const SearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        rebuildFactor: RebuildFactors.all,
        minTextAdapt: true,


        builder: (_, child) {
          return
            MultiBlocProvider(
              providers: [

                BlocProvider<SearchCubit>(
                  create: (BuildContext context) => SearchCubit (),
                ),

              ],
              child: MaterialApp(


                debugShowCheckedModeBanner: false,
                useInheritedMediaQuery: true,
                theme: appTheme(),
                initialRoute: Routes.searchRoute,
                onGenerateRoute: RouteGenerator.getRoute,


              ),
            );
        });
  }


}
