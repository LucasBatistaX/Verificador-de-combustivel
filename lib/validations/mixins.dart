mixin Mixins {
 // transforma o dado de virgula para ponto.
  double toPoint(String value) {
    return double.parse(value.replaceAll(',', '.'));
  }
 
  double? parseNumber(String value) {
    if (value.contains(',')) {
      String withComma = value;
      return toPoint(withComma);
    } else if (value.contains('.')) {
      return double.tryParse(value);
    }
    return double.tryParse(value);
  }

  bool isNumber(String data) {
    return parseNumber(data) != null;
  }

  String? isNotEmpty(String? value, [String? message]){
    if (value == null || value.isEmpty){
      return message ?? "Por favor, insira um valor.";
    }else if (!isNumber(value)) {
                        return "Digite um número.";
                    }  else {
      return null;
    }
  }
}