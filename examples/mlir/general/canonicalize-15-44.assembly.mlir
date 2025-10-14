module {
  func.func @invariant_loop_args_in_same_order(%arg0: tensor<i32>) -> (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) {
    %cst = arith.constant dense<0> : tensor<i32>
    %cst_0 = arith.constant dense<1> : tensor<i32>
    %cst_1 = arith.constant dense<42> : tensor<i32>
    %0:5 = scf.while (%arg1 = %cst, %arg2 = %arg0, %arg3 = %cst_0, %arg4 = %cst_0, %arg5 = %cst) : (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) {
      %1 = arith.cmpi slt, %arg1, %cst_1 : tensor<i32>
      %extracted = tensor.extract %1[] : tensor<i1>
      scf.condition(%extracted) %arg1, %arg2, %arg3, %arg4, %arg5 : tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>
    } do {
    ^bb0(%arg1: tensor<i32>, %arg2: tensor<i32>, %arg3: tensor<i32>, %arg4: tensor<i32>, %arg5: tensor<i32>):
      %1 = arith.addi %arg1, %arg2 : tensor<i32>
      %2 = arith.addi %arg3, %arg4 : tensor<i32>
      scf.yield %1, %arg2, %2, %2, %arg5 : tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>
    }
    return %0#0, %0#1, %0#2, %0#3, %0#4 : tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>
  }
  func.func @while_loop_invariant_argument_different_order(%arg0: tensor<i32>) -> (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) {
    %cst = arith.constant dense<0> : tensor<i32>
    %cst_0 = arith.constant dense<1> : tensor<i32>
    %cst_1 = arith.constant dense<42> : tensor<i32>
    %0:6 = scf.while (%arg1 = %cst, %arg2 = %cst_0, %arg3 = %cst_0, %arg4 = %cst_0, %arg5 = %cst) : (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) {
      %1 = arith.cmpi slt, %arg1, %arg0 : tensor<i32>
      %extracted = tensor.extract %1[] : tensor<i1>
      scf.condition(%extracted) %arg2, %arg1, %arg3, %arg1, %arg4, %arg5 : tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>
    } do {
    ^bb0(%arg1: tensor<i32>, %arg2: tensor<i32>, %arg3: tensor<i32>, %arg4: tensor<i32>, %arg5: tensor<i32>, %arg6: tensor<i32>):
      %1 = arith.addi %arg1, %cst_0 : tensor<i32>
      %2 = arith.addi %arg3, %arg4 : tensor<i32>
      scf.yield %arg4, %arg2, %2, %2, %arg5 : tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>
    }
    return %0#0, %0#1, %0#2, %0#3, %0#4, %0#5 : tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>
  }
}

