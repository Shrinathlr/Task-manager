import 'package:riverpod/riverpod.dart';

final CalculatorProvider = StateNotifierProvider<CalculatorNotifer,String>(
  (ref) => CalculatorNotifer(),
);

class CalculatorNotifer extends StateNotifier<String>{
  CalculatorNotifer(): super('');

  void append(String value){
    state += value;
  }

  void clear(){
    state = '';
  }

  void delete(){
    if(state.isNotEmpty) state = state.substring(0, state.length - 1);
  }

  void calculate(){
    try {
      final result = _evaluateExpression(state);
          state = result.toString();
        } catch (e) {
          state = 'error';
        }
  }
  
 double _evaluateExpression(String expression) {
  if (expression.contains('+')) {
      var parts = expression.split('+');
      return double.parse(parts[0]) + double.parse(parts[1]);
    }
    else if(expression.contains('-')){
      var parts = expression.split('-');
      return double.parse(parts[0]) - double.parse(parts[1]);
    }
      else if(expression.contains('*')){
      var parts = expression.split('*');
      return double.parse(parts[0]) * double.parse(parts[1]);
    }
      else if(expression.contains('/')){
      var parts = expression.split('/');
      return double.parse(parts[0]) / double.parse(parts[1]);
    }

    throw Exception('Invalid Expression');
 }
}