import 'package:flutter/material.dart';
import 'package:meal_app/screens/tabs.dart';
import 'package:meal_app/widgets/main_drawer.dart';
import 'package:flutter/cupertino.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your filters'),
      ),
      drawer: MainDrawer(
        onSelectScreen: (identifier) {
          Navigator.of(context).pop();
          if (identifier == 'meals') {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const TabsScreen(),
              ),
            );
          }
        },
      ),
      body: Column(
        children: [
          CupertinoListTile(
            // value: _glutenFreeFilterSet,
            // onTap: (isChecked) {
            //   setState(() {
            //     _glutenFreeFilterSet = isChecked;
            //   });
            // },
            title: Text(
              'Gluten-free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only include gluten-free meals.',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            trailing: CupertinoSwitch(
              value: _glutenFreeFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _glutenFreeFilterSet = isChecked;
                });
              },
            ),

            //  activeColor: Theme.of(context).colorScheme.tertiary,
            // contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          CupertinoListTile(
            // value: _lactoseFreeFilterSet,
            // onChanged: (isChecked) {
            //   setState(() {
            //     _lactoseFreeFilterSet = isChecked;
            //   });
            // },
            title: Text(
              'Lactose-free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only include lactose-free meals.',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            trailing: CupertinoSwitch(
              value: _lactoseFreeFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _lactoseFreeFilterSet = isChecked;
                });
              },
            ),
            // activeColor: Theme.of(context).colorScheme.tertiary,
            // contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          CupertinoListTile(
            // value: _vegetarianFilterSet,
            // onChanged: (isChecked) {
            //   setState(() {
            //     _vegetarianFilterSet = isChecked;
            //   });
            // },
            title: Text(
              'Vegetarian meals',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only include vegetarian meals.',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            trailing: CupertinoSwitch(
              value: _vegetarianFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _vegetarianFilterSet = isChecked;
                });
              },
            ),
            // activeColor: Theme.of(context).colorScheme.tertiary,
            // contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          CupertinoListTile(
            // value: _veganFilterSet,
            // onChanged: (isChecked) {
            //   setState(() {
            //     _veganFilterSet = isChecked;
            //   });
            // },
            title: Text(
              'Vegan Meal',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only include vegan meals.',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            trailing: CupertinoSwitch(
              value: _veganFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _veganFilterSet = isChecked;
                });
              },
            ),
            // activeColor: Theme.of(context).colorScheme.tertiary,
            // contentPadding: const EdgeInsets.only(left: 34, right: 22),
          )
        ],
      ),
    );
  }
}
