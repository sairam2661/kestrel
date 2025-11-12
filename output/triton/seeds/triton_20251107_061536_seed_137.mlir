"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 456 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.divsi"(%2, %0) : (tensor<128xi32>, i32) -> tensor<128xi32>
    %4 = "arith.remsi"(%3, %1) : (tensor<128xi32>, i32) -> tensor<128xi32>
    %5:2 = "tt.reduce"(%4) <{operation = "add", input_type = "i32", reduction_type = "i32", initial_value = 0 : i32}> : (tensor<128xi32>) -> (i32, i32)
    %6 = "arith.mul"(%5#0, %5#1) : (i32, i32) -> i32
    %7 = "arith.select"(%6, %0, %1) : (i32, i32, i32) -> i32
    %8 = "tt.expand_dims"(%arg0) <{axis = 1 : i32}> : (tensor<128xi32>) -> tensor<128x1xi32>
    %9 = "tt.addptr"(%8, %7) : (tensor<128x1xi32>, i32) -> tensor<128x1xi32>
    "tt.return"(%9) : (tensor<128x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()