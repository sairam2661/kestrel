"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (i32) -> (), sym_name = "div"}> ({
  ^bb0(%arg0: i32):
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.divsi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.divui"(%1, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.constant"() <{value = dense<64> : tensor<128xi32>}> : () -> tensor<128xi32>
    %5 = "arith.divsi"(%0, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.divsi"(%4, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.divsi"(%4, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %8 = "arith.constant"() <{value = dense<66> : tensor<128xi32>}> : () -> tensor<128xi32>
    %9 = "arith.divui"(%0, %8) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %10 = "tt.make_range"() <{end = 8320 : i32, start = 8192 : i32}> : () -> tensor<128xi32>
    %11 = "arith.divsi"(%10, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %12 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %13 = "arith.divsi"(%arg0, %12) : (i32, i32) -> i32
    %14 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %15 = "arith.divsi"(%arg0, %14) : (i32, i32) -> i32
    %16 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %17 = "arith.divsi"(%arg0, %16) : (i32, i32) -> i32
    %18 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %19 = "arith.divsi"(%0, %18) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

