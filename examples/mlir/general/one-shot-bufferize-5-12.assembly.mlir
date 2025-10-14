module {
  func.func @scf_while(%arg0: tensor<?xi1>, %arg1: index) -> tensor<?xi1> {
    %0:2 = scf.while (%arg2 = %arg0, %arg3 = %arg1) : (tensor<?xi1>, index) -> (tensor<?xi1>, index) {
      %extracted = tensor.extract %arg2[%arg1] : tensor<?xi1>
      scf.condition(%extracted) %arg2, %arg1 : tensor<?xi1>, index
    } do {
    ^bb0(%arg2: tensor<?xi1>, %arg3: index):
      %1 = "dummy.some_op"() : () -> index
      %2 = "dummy.another_op"() : () -> i1
      %inserted = tensor.insert %2 into %arg2[%1] : tensor<?xi1>
      scf.yield %inserted, %arg3 : tensor<?xi1>, index
    }
    return %0#0 : tensor<?xi1>
  }
}

