"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>) -> tensor<16xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = dense<10> : tensor<16xi32>}> : () -> tensor<16xi32>
    %3 = "arith.muli"(%arg1, %2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.remsi"(%3, %0) : (tensor<16xi32>, i32) -> tensor<16xi32>
    %5 = "arith.constant"() <{value = dense<5> : tensor<16xi32>}> : () -> tensor<16xi32>
    %6 = "arith.xori"(%arg1, %5) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %7 = "arith.select"(%1, %6, %arg1) : (i32, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()