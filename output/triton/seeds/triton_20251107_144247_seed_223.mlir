"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.constant"() <{value = dense<5> : tensor<16xi32>}> : () -> tensor<16xi32>
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.constant"() <{value = dense<3> : tensor<16xi32>}> : () -> tensor<16xi32>
    %5 = "arith.remsi"(%3, %4) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.constant"() <{value = dense<4> : tensor<16xi32>}> : () -> tensor<16xi32>
    %7 = "arith.subi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %8 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %9 = "arith.xori"(%7, %8) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%9) : (tensor<16xi32>) -> ()
  }) : (i32, tensor<16xi32>) -> (tensor<16xi32>)
}) : () -> ()