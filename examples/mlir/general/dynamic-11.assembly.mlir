module {
  func.func @customOpParserPrinter() {
    test.dynamic_custom_parser_printer custom_keyword
    return
  }
}

