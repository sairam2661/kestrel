"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_reduction", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tt.expand_dims"(%arg0) <{dim = 1 : i64}> : (i32) -> tensor<1xi32>
    %2 = "tt.expand_dims"(%arg1) <{dim = 1 : i64}> : (i32) -> tensor<1xi32>
    %3 = "tt.make_range"() <{end = 10 : i32, start = 0 : i32}> : () -> tensor<10xi32>
    %4 = "tt.reduce"(%1, %2, %3) <{operation = "add"}> : (tensor<1xi32>, tensor<1xi32>, tensor<10xi32>) -> i32
    "tt.return"(%4) : (i32) -> ()
  }) : (i32, i32) -> (i32)
}) {"ttg.num-ctas" = 8 : i32, "ttg.num-warps" = 32 : i32} : () -> ()