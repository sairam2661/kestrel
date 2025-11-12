"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "test_vector_arith"}> ({
  ^bb0(%arg0: tensor<2x3xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    %2 = "arith.cmpi"(%1, %arg0, "eq") : (tensor<2x3xi32>, tensor<2x3xi32>, i32) -> tensor<2x3xi1>
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "arith.addi"(%1, %3) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    "func.return"(%4) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()