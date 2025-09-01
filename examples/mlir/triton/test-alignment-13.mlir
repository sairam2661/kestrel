"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "shift"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<8> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.constant"() <{value = dense<4> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "arith.shli"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.shrsi"(%0, %2) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.shli"(%1, %2) <{overflowFlags = #arith.overflow<none>}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

