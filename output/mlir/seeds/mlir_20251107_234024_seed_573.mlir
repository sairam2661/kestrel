"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<10x10xi32>) -> (i32, tensor<10x10xi32>), sym_name = "test_complex"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<10x10xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "tosa.const"() <{value = dense<1> : tensor<10x10xi32>}> : () -> tensor<10x10xi32>
    %3 = "arith.addi"(%arg1, %2) : (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>
    ^bb1(%bb1_arg0: i32, %bb1_arg1: tensor<10x10xi32>):
      "scf.yield"(%bb1_arg0, %bb1_arg1) : (i32, tensor<10x10xi32>) -> ()
    "scf.yield"(%1, %3) : (i32, tensor<10x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()