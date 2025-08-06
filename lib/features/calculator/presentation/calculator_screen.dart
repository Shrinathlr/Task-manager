import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/calculator_provider.dart';
import 'widgets/calculator_button.dart';

class CalculatorScreen extends ConsumerWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expression = ref.watch(CalculatorProvider);

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // Display
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                 color: Colors.grey[200],
                 borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  ),
                ),
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(24),
                // color: Colors.grey[300],
                child: SingleChildScrollView(
                  reverse: true,
                  child: Text(
                    expression,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                    ),
                    
                  ),
                ),
              ),
            ),
            // Buttons
            _buildButtons(ref),
          ],
        ),
      ),
    );
  }

  Widget _buildButtons(WidgetRef ref) {
    return Column(
      children: [
        _buildButtonRow(['7', '8', '9', '/'], ref),
        _buildButtonRow(['4', '5', '6', '*'], ref),
        _buildButtonRow(['1', '2', '3', '-'], ref),
        _buildButtonRow(['0', '.', '=', '+'], ref),
        _buildButtonRow(['C', 'DEL'], ref),
      ],
    );
  }

  Widget _buildButtonRow(List<String> labels, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: labels.map((label) {
        return CalculatorButton(
          label: label,
          onTap: () {
            final notifier = ref.read(CalculatorProvider.notifier);
            if (label == 'C') {
              notifier.clear();
            } else if (label == 'DEL') {
              notifier.delete();
            } else if (label == '=') {
              notifier.calculate();
            } else {
              notifier.append(label);
            }
          },
          isOperator: ['/', '*', '-', '+', '='].contains(label),
        );
      }).toList(),
    );
  }
}
