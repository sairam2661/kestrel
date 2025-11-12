"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_types_kernel"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = "ne"}> : (i32, i64) -> i1
    %2 = "arith.select"(%1, %arg0, %arg1) : (i1, i32, i64) -> i64
    %3 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %4 = "tt.expand_dims"(%3) <{dim = 0 : i32}> : (tensor<64xi32>) -> tensor<1x64xi32>
    %5 = "arith.subi"(%arg0, %arg1) : (i32, i64) -> i64
    %6 = "arith.xori"(%arg0, %arg1) : (i32, i64) -> i64
    "tt.return"(%2, %5, %6) : (i64, i64, i64) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()