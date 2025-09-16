"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "arith_constants"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %4 = "arith.constant"() <{value = dense<[[1, 2], [-3, 9], [0, 0], [2, -1]]> : tensor<4x2xi64>}> : () -> tensor<4x2xi64>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

