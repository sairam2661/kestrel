"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_reduce_and_join"}> ({
    ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
      %0 = "tt.reduce"(%arg0) <{operation = "add"}> : (tensor<i32>) -> tensor<i32>
      %1 = "tt.reduce"(%arg1) <{operation = "mul"}> : (tensor<i32>) -> tensor<i32>
      %2 = "arith.addi"(%0, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %3 = "tt.expand_dims"(%2) <{dim = 1}> : (tensor<i32>) -> tensor<1xi32>
      "tt.return"(%3) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()