"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "max_min"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "tt.make_range"() <{end = 192 : i32, start = 64 : i32}> : () -> tensor<128xi32>
    %2 = "arith.maxsi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.minsi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.constant"() <{value = dense<8> : tensor<128xi32>}> : () -> tensor<128xi32>
    %5 = "arith.constant"() <{value = dense<4> : tensor<128xi32>}> : () -> tensor<128xi32>
    %6 = "arith.maxsi"(%4, %5) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

