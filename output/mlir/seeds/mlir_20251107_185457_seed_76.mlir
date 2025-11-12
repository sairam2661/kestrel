"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, i32) -> tensor<4x4xi32>, sym_name = "matrix_modify"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: i32):
    %0 = "arith.cmpi"(%arg1, 0) <{predicate = "eq"}> : (i32, i32) -> i1
    %1 = "scf.if"(%0) <{results = tensor<4x4xi32>}> ({
    ^bb1:
      %2 = "arith.constant"() <{value = dense<1> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %3 = "arith.addi"(%arg0, %2) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      "scf.yield"(%3) : (tensor<4x4xi32>) -> tensor<4x4xi32>
    }) {
    } : tensor<4x4xi32> -> tensor<4x4xi32>
    "func.return"(%1) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()