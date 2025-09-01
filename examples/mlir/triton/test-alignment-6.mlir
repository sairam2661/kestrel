"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "rem"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.remsi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.remui"(%1, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.constant"() <{value = dense<64> : tensor<128xi32>}> : () -> tensor<128xi32>
    %5 = "arith.remsi"(%0, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.remsi"(%4, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.constant"() <{value = dense<66> : tensor<128xi32>}> : () -> tensor<128xi32>
    %8 = "arith.remui"(%0, %7) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

