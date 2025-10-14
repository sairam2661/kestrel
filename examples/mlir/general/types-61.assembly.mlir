module {
  func.func @elements_attr_i32(%arg0: tensor<1x2xi32>) {
    "test.i32ElementsAttr"() <{attr = dense<[1, 2]> : tensor<2xi32>}> : () -> ()
    return
  }
}

