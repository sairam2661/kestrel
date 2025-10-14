module {
  func.func private @some_external_func(tensor<4xi32>)
  func.func @main() {
    %cst = arith.constant dense<[1, 2, 3, 4]> : tensor<4xi32>
    call @some_external_func(%cst) : (tensor<4xi32>) -> ()
    return
  }
}

