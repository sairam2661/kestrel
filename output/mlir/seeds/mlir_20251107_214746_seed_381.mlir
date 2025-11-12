"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "edge_case_func"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "tosa.const"() <{values = dense<123456789> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %2 = "scf.for"(%0) <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
    ^bb1(%iv: index, %acc: tensor<i32>):
      %3 = "arith.addi"(%acc, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "scf.yield"(%3) : (tensor<i32>) -> ()
    }) : (tensor<i32>) -> tensor<i32>
    "func.return"(%2) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()