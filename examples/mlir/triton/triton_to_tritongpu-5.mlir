"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "gather_op"}> ({
    %0 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<128x4xf32>}> : () -> tensor<128x4xf32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<256x4xi32>}> : () -> tensor<256x4xi32>
    %2 = "tt.gather"(%0, %1) <{axis = 0 : i32}> : (tensor<128x4xf32>, tensor<256x4xi32>) -> tensor<256x4xf32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

