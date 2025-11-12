"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, i32) -> tensor<32xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
    %3 = "arith.subi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.constant"() <{value = dense<3> : tensor<32xi32>}> : () -> tensor<32xi32>
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "arith.constant"() <{value = dense<4> : tensor<32xi32>}> : () -> tensor<32xi32>
    %7 = "arith.divsi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %8 = "arith.constant"() <{value = dense<5> : tensor<32xi32>}> : () -> tensor<32xi32>
    %9 = "arith.remsi"(%7, %8) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %10 = "arith.constant"() <{value = dense<6> : tensor<32xi32>}> : () -> tensor<32xi32>
    %11 = "arith.xori"(%9, %10) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%11) : (tensor<32xi32>) -> ()
  }) : (tensor<32xi32>, i32) -> tensor<32xi32>
}) : () -> ()