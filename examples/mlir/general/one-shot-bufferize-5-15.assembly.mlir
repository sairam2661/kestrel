module {
  func.func @scf_while_iter_arg_result_mismatch(%arg0: tensor<5xi1>, %arg1: tensor<5xi1>, %arg2: index) {
    scf.while (%arg3 = %arg1) : (tensor<5xi1>) -> () {
      %extracted = tensor.extract %arg0[%arg2] : tensor<5xi1>
      %extracted_0 = tensor.extract %arg3[%arg2] : tensor<5xi1>
      "dummy.use"(%extracted_0) : (i1) -> ()
      scf.condition(%extracted)
    } do {
      %0 = "dummy.some_op"() : () -> index
      %1 = "dummy.another_op"() : () -> i1
      %inserted = tensor.insert %1 into %arg0[%0] : tensor<5xi1>
      scf.yield %inserted : tensor<5xi1>
    }
    return
  }
}

