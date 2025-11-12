"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<16xi32>, sym_name = "stress_test"}> ({
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.muli"(%0, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.constant"() <{value = dense<3> : tensor<16xi32>}> : () -> tensor<16xi32>
    %4 = "arith.addi"(%2, %3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.constant"() <{value = dense<4> : tensor<16xi32>}> : () -> tensor<16xi32>
    %6 = "arith.xori"(%4, %5) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %7 = "arith.constant"() <{value = dense<5> : tensor<16xi32>}> : () -> tensor<16xi32>
    %8 = "arith.divsi"(%6, %7) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%8) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()