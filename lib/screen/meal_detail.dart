import 'package:flutter/material.dart';
import 'package:mealapp/model/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 14,),
            Text('Ingredient',style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color:  Theme.of(context).colorScheme.primary,
            ),),
            SizedBox(height: 14,),
        
            for(final Ingredient in meal.ingredients)
              Text(Ingredient, style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color:  Theme.of(context).colorScheme.onBackground,)),
              SizedBox(height: 24,),
        
        
        
              Text('Steps',style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color:  Theme.of(context).colorScheme.primary,
            ),),
            SizedBox(height: 14,),
        
            for(final Steps in meal.steps)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical:8 ),
                child: Text(Steps,
                textAlign:  TextAlign.center ,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color:  Theme.of(context).colorScheme.onBackground,)),
              ),
              SizedBox(height: 24,),
        
        
        
        
              
          ],
        ),
      ),
    );
  }
}
