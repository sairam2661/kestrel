"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.muli"(%0, %arg0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.subi"(%1, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.cmpi"(%2, %arg0) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %4 = "arith.select"(%3, %1, %arg0) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.muli"(%5, %arg0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %7 = "arith.subi"(%6, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()