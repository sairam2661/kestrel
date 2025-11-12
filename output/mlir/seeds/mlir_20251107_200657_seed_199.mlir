"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = dense<42> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %2 = "arith.cmpi"(%1, %0, "gt") : (tensor<4x4xi32>, tensor<4x4xi32>, i64) -> tensor<4x4xi1>
    %3 = "scf.if"(%2) ({
    ^bb1(%cond: tensor<4x4xi1>):
        %4 = "arith.constant"() <{value = dense<1> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
        scf.yield %4 : tensor<4x4xi32>
    }) {
    } : (tensor<4x4xi1>) -> tensor<4x4xi32>
    "func.return"(%3) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()