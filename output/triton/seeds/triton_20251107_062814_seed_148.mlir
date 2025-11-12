"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, i32) -> i32, sym_name = "complex_operations"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<42> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.muli"(%1, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %4 = "arith.remsi"(%2, %3) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.select"(%arg1, %4, %0) : (i32, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "tt.reduce"(%5) <{reduction_op = "add"}> : (tensor<128xi32>) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : (tensor<128xi32>, i32) -> i32
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()