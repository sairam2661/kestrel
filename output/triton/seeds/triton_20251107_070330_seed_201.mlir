"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgpuwgmaa) -> i1, sym_name = "cmpsle"}> ({
  ^bb0(%arg0: !ttgpuwgmaa):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
    %2 = "arith.cmpi"(%0, %1) <{predicate = 3 : i64}> : (i32, i32) -> i1
    "tt.return"(%2) : (i1) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()