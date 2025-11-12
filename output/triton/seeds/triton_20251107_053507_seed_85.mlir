"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "tt.reduce"(%0, %1) <{operation = "add"}> : (tensor<16xi32>, i32) -> i32
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "arith.xori"(%2, %3) : (i32, i32) -> i32
    %5 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %6 = "arith.constant"() <{value = dense<8> : tensor<16xi32>}> : () -> tensor<16xi32>
    %7 = "arith.divsi"(%5, %6) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %8 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %9 = "arith.divsi"(%5, %8) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %10 = "arith.cmpi"(%7, %9, "slt") : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %11 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %12 = "arith.select"(%10, %7, %11) : (tensor<16xi1>, tensor<16xi32>, i32) -> tensor<16xi32>
    "tt.return"(%12) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()