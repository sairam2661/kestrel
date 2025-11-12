"builtin.module"() ({
  "tt.func"() <{function_type = (!tt_ptr) -> i1, sym_name = "complex_cmp"}> ({
  ^bb0(%arg0: !tt_ptr):
    %0 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.cmpi"(%0, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %3 = "arith.xori"(%2, true) : (i1, i1) -> i1
    "tt.return"(%3) : (i1) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 1 : i32} : () -> ()