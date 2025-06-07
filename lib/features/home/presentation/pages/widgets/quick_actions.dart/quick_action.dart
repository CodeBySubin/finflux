import 'package:finflux/features/home/presentation/pages/widgets/quick_actions.dart/dummy_data.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/widgets.dart';

class QuickAction extends StatelessWidget {
  const QuickAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("Quick Action"), HorizontalListview(data: quickActionData,)],
      ),
    );
  }
}
