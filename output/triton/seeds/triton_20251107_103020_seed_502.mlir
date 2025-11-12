"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> tensor<16xi1>, sym_name = "tensor_logic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.muli"(%0, %1) : (tensor<16xi32>, i32) -> tensor<16xi32>
    %4 = "arith.addi"(%0, %2) : (tensor<16xi32>, i32) -> tensor<16xi32>
    %5 = "arith.remsi"(%3, %4) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.cmpi"(%0, %5) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    "tt.return"(%6) : (tensor<16xi1>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()