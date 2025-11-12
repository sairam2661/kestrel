"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.subi"(%2, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.divsi"(%3, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.xori"(%4, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.cmpi"(%5, %arg1, "slt") : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %7 = "arith.select"(%6, %5, %arg0) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> tensor<16xi32>
}) : () -> ()