class ValidatorHelper {

  static String isNotEmptyValue(String text) {
    return text.isEmpty || text == "0" ? 'Campo obrigatório não ser 0 ou vázio' : null;
  }

}
