// tham khao : https://viblo.asia/p/flutter-navigator-and-routing-Do754beeZM6
import 'package:flutter/material.dart';
import './screens/tabs_screen.dart';

import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
        )
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/' : (ctx) => TabsScreen(),
        // '/category-meals':(ctx) => CategoryMealsScreen(),
        CategoryMealsScreen.routeName: (ctx) =>CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) =>MealDetailScreen(),
        // để có thể tạo hiệu ứng chuyển cảnh như tài liệu tham khảo trên hay các động thái khác trong router
      },
      onGenerateRoute: (settings) {
        // print(settings.arguments);
        // if (settings.name == '/meal-detail') {
        //   return ;
        // } else if (settings.name == '') {
        //   return;
        // }
        // return MaterialPageRoute(builder: (ctx) => CategoriesScreen(), );
      },
      // page 404
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen(), );
      },
    );
  }
}
