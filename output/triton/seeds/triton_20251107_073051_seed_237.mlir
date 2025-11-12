"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %1) : (i1, i32, i32) -> i32
    %5 = "arith.remsi"(%4, %0) : (i32, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> i32
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 2 : i32} : () -> (i32)