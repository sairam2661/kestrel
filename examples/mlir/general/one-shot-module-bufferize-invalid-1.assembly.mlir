module {
  func.func @scf_while_non_equiv_condition(%arg0: tensor<5xi1>, %arg1: tensor<5xi1>, %arg2: index) -> (i1, i1) {
    %0:2 = scf.while (%arg3 = %arg0, %arg4 = %arg1) : (tensor<5xi1>, tensor<5xi1>) -> (tensor<5xi1>, tensor<5xi1>) {
      %extracted_1 = tensor.extract %arg3[%arg2] : tensor<5xi1>
      scf.condition(%extracted_1) %arg4, %arg3 : tensor<5xi1>, tensor<5xi1>
    } do {
    ^bb0(%arg3: tensor<5xi1>, %arg4: tensor<5xi1>):
      %1 = "dummy.some_op"() : () -> index
      %2 = "dummy.another_op"() : () -> i1
      %inserted = tensor.insert %2 into %arg3[%1] : tensor<5xi1>
      scf.yield %inserted, %arg4 : tensor<5xi1>, tensor<5xi1>
    }
    %extracted = tensor.extract %0#0[%arg2] : tensor<5xi1>
    %extracted_0 = tensor.extract %0#1[%arg2] : tensor<5xi1>
    return %extracted, %extracted_0 : i1, i1
  }
}

