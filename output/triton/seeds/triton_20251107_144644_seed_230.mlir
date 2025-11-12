"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_computation"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<3> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.muli"(%arg1, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.addi"(%arg1, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.subi"(%2, %3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.remsi"(%4, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.xori"(%arg1, %5) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %7 = "arith.cmpi"(%arg0, %6, "slt") : (i32, tensor<16xi32>) -> tensor<16xi1>
    %8 = "arith.select"(%7, %6, %arg1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%8) : (tensor<16xi32>) -> ()
  }) : () -> (tensor<16xi32>)
}) : () -> ()