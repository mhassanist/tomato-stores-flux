import 'package:flutter/material.dart';
import 'package:inspireui/widgets/expandable/expansion_widget.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';
import '../../../models/entities/listing_location.dart';
import '../../../models/index.dart' show ListingLocationModel, ProductModel;
import '../../common/tree_view.dart';
import 'location_item.dart';

class BackDropListingMenu extends StatefulWidget {
  final Function onFilter;

  const BackDropListingMenu({Key? key, required this.onFilter})
      : super(key: key);

  @override
  State<BackDropListingMenu> createState() => _BackDropTagMenuState();
}

class _BackDropTagMenuState extends State<BackDropListingMenu> {
  List<ListingLocation> get locations =>
      Provider.of<ListingLocationModel>(context, listen: false).locations;

  String? get categoryId =>
      Provider.of<ProductModel>(context, listen: false).categoryId;
  String? _listingLocationId;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      setState(() {
        _listingLocationId =
            Provider.of<ProductModel>(context, listen: false).listingLocationId;
      });
    });
  }

  void _selectLocation(ListingLocation item) {
    setState(() {
      _listingLocationId = item.id;
    });

    widget.onFilter(
      categoryId: categoryId,
      listingLocationId: item.id,
    );
  }

  List<ListingLocation> _getParentItems() {
    final parentItems =
        locations.where((e) => e.parent == null || e.parent == '0').toList();
    return parentItems.isEmpty ? locations : parentItems;
  }

  List<ListingLocation> _getChildItems(ListingLocation parent) =>
      locations.where((e) => e.parent == parent.id).toList();

  @override
  Widget build(BuildContext context) {
    if (locations.isEmpty) {
      return const SizedBox();
    }
    final parentItems = _getParentItems();
    return ExpansionWidget(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 20,
        bottom: 10,
      ),
      title: Text(
        S.of(context).location.toUpperCase(),
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w700,
            ),
      ),
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
          decoration: const BoxDecoration(
            color: Colors.white12,
          ),
          child: Column(
            children: List.generate(
              parentItems.length,
              (index) {
                final childItems = _getChildItems(parentItems[index]);
                return Parent(
                    callback: (isSelected) {
                      if (childItems.isEmpty) {
                        _selectLocation(parentItems[index]);
                      }
                    },
                    parent: LocationItem(
                      parentItems[index],
                      isSelected: parentItems[index].id == _listingLocationId,
                    ),
                    childList: ChildList(
                      children: List.generate(
                        childItems.length,
                        (index) {
                          final childItems2 = _getChildItems(childItems[index]);
                          return Parent(
                              callback: (isSelected) {
                                if (childItems2.isEmpty) {
                                  _selectLocation(childItems[index]);
                                }
                              },
                              parent: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: LocationItem(
                                  childItems[index],
                                  isSelected: childItems[index].id ==
                                      _listingLocationId,
                                ),
                              ),
                              childList: ChildList(
                                children: List.generate(
                                    childItems2.length,
                                    (index) => Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: LocationItem(
                                            childItems2[index],
                                            isSelected: childItems2[index].id ==
                                                _listingLocationId,
                                            onTap: () {
                                              _selectLocation(
                                                  childItems2[index]);
                                            },
                                          ),
                                        )),
                              ));
                        },
                      ),
                    ));
              },
            ),
          ),
        ),
      ],
    );
  }
}
