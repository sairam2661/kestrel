"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf32>, i32) -> tensor<3xf32>, sym_name = "test_select"}> ({
  ^bb0(%arg0: tensor<2x3xf32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg1, %0, "sge") : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = dense<0.000000e+00> : tensor<3xf32>}> : () -> tensor<3xf32>
    %3 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<3xf32>}> : () -> tensor<3xf32>
    %4 = "tosa.select"(%1, %3, %2) : (i1, tensor<3xf32>, tensor<3xf32>) -> tensor<3xf32>
    "func.return"(%4) : (tensor<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()