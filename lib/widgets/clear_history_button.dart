import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/index.dart';
import '../providers/history.dart';

class ClearHistoryButton extends StatelessWidget {
  const ClearHistoryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ElevatedButton(
      onPressed: Provider.of<History>(context, listen: false).clearHistory,
      style: ElevatedButton.styleFrom(
        foregroundColor: colorScheme.buttonText, backgroundColor: colorScheme.buttonBg, elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: const FittedBox(
        child: Text('Clear History'),
      ),
    );
  }
}
