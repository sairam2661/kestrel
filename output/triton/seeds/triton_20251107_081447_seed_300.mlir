"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "arithmetic_mixed"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<2 : i32> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.muli"(%1, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.subi"(%2, %arg0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.divsi"(%3, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.remsi"(%4, %arg0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.xori"(%5, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %7 = "arith.cmpi"(%arg0, %arg1) <{predicate = 3 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %8 = "arith.select"(%7, %arg0, %arg1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%8) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()