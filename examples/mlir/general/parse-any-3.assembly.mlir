module {
  func.func @parseOnlyStorageType() -> !quant.any<i8> {
    %0 = "foo"() : () -> !quant.any<i8>
    return %0 : !quant.any<i8>
  }
}

