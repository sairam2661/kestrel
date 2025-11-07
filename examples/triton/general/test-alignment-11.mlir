"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "logic"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<64> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.divsi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.constant"() <{value = dense<8> : tensor<128xi32>}> : () -> tensor<128xi32>
    %4 = "arith.divsi"(%0, %3) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.andi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.ori"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.xori"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %8 = "arith.andi"(%2, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %9 = "arith.ori"(%2, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %10 = "arith.xori"(%2, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

