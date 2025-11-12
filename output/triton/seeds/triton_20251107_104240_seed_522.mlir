"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>, i32) -> tensor<16xi32>, sym_name = "complex_shift_and_select"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>, %arg2: i32):
    %0 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %3 = "arith.select"(%2, %0, %1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.addi"(%arg0, %3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.subi"(%arg1, %3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.muli"(%4, %5) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %7 = "arith.xori"(%6, %arg2) : (tensor<16xi32>, i32) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()