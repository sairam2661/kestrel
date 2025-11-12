"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_global_ptr, !ttg_global_ptr, i32) -> i32, sym_name = "process_data"}> ({
  ^bb0(%arg0: !ttg_global_ptr, %arg1: !ttg_global_ptr, %arg2: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.select"(%arg2, %0, %2) <{predicate = 0 : i64}> : (i32, i32, i32) -> i32
    %4 = "arith.divsi"(%3, %1) : (i32, i32) -> i32
    %5 = "arith.xori"(%4, %2) : (i32, i32) -> i32
    %6 = "tt.expand_dims"(%arg0, %0) <{dim = 2 : i64}> : (!ttg_global_ptr, i32) -> !ttg_global_ptr
    %7 = "tt.addptr"(%arg1, %5) : (!ttg_global_ptr, i32) -> !ttg_global_ptr
    "tt.return"(%7) : (!ttg_global_ptr) -> i32
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32, "ttg.num-ctas" = 8 : i32} : () -> ()