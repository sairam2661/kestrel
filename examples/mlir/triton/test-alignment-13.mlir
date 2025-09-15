"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 4 : i32}], function_type = (i32) -> (), sym_name = "shift"}> ({
  ^bb0(%arg0: i32):
    %0 = "tt.splat"(%arg0) : (i32) -> tensor<128xi32>
    %1 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %2 = "arith.constant"() <{value = dense<8> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "arith.constant"() <{value = dense<4> : tensor<128xi32>}> : () -> tensor<128xi32>
    %4 = "arith.shli"(%1, %2) <{overflowFlags = #arith.overflow<none>}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.shrsi"(%1, %3) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.shli"(%2, %3) <{overflowFlags = #arith.overflow<none>}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.shli"(%2, %0) <{overflowFlags = #arith.overflow<none>}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %8 = "arith.shrsi"(%1, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

