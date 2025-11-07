"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (i64) -> (), sym_name = "mul"}> ({
  ^bb0(%arg0: i64):
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.constant"() <{value = dense<128> : tensor<128xi32>}> : () -> tensor<128xi32>
    %4 = "arith.muli"(%3, %1) <{overflowFlags = #arith.overflow<none>}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %6 = "arith.muli"(%4, %5) <{overflowFlags = #arith.overflow<none>}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.constant"() <{value = 4611686018427387904 : i64}> : () -> i64
    %8 = "arith.muli"(%arg0, %7) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

