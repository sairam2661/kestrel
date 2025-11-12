"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_condition"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %3 = "arith.cmpi"(%arg1, %2) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %4 = "arith.select"(%1, %arg0, %arg1) : (i1, i32, i32) -> i32
    %5 = "arith.xori"(%4, %0) : (i32, i32) -> i32
    %6 = "arith.muli"(%5, %2) : (i32, i32) -> i32
    %7 = "arith.remsi"(%6, %arg1) : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> i32
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()