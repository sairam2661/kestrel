module {
  func.func private @some_external_func_within_scf_execute(tensor<4xi32>)
  func.func @main() {
    %cst = arith.constant dense<[1, 2, 3, 4]> : tensor<4xi32>
    scf.execute_region {
      func.call @some_external_func_within_scf_execute(%cst) : (tensor<4xi32>) -> ()
      scf.yield
    }
    return
  }
}

