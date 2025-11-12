"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_combo"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.muli"(%arg0, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.divsi"(%arg1, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.remsi"(%1, %2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.xori"(%1, %3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.cmpi"(%1, %4) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %6 = "arith.select"(%5, %arg0, %arg1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
}) : () -> ()