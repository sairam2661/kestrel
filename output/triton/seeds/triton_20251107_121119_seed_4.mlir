"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "complex_computation"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.xori"(%arg0, %c1_i32) : (tensor<16x16xi32>, i32) -> tensor<16x16xi32>
    %3 = "arith.addi"(%2, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "arith.cmpi"(%3, %c0_i32) <{predicate = 4 : i64}> : (tensor<16x16xi32>, i32) -> tensor<16x16xi1>
    %5 = "arith.select"(%4, %3, %arg0) : (tensor<16x16xi1>, tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %6 = "tt.expand_dims"(%5) <{axis = 2 : i32}> : (tensor<16x16xi32>) -> tensor<16x16x1xi32>
    %7 = "tt.expand_dims"(%6) <{axis = 3 : i32}> : (tensor<16x16x1xi32>) -> tensor<16x16x1x1xi32>
    %8 = "tt.reduce"(%7) <{operation = "add", dimensions = [1, 3]}> : (tensor<16x16x1x1xi32>) -> tensor<16x16xi32>
    "tt.return"(%8) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()