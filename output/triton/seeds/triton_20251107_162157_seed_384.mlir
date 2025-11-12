"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr)into (!ttg_ptr), sym_name = "complex_pointer_arithmetic"}> ({
  ^bb0(%arg0: !ttg_ptr):
    %1 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %3 = "tt.addptr"(%arg0, %1, %2) : (!ttg_ptr, i32, i32) -> !ttg_ptr
    %4 = "arith.constant"() <{value = -8 : i32}> : () -> i32
    %5 = "tt.addptr"(%3, %4, %2) : (!ttg_ptr, i32, i32) -> !ttg_ptr
    %6 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> !ttg_ptr
    %7 = "tt.addptr"(%5, %2, %1) : (!ttg_ptr, i32, i32) -> !ttg_ptr
    "tt.return"(%7) : (!ttg_ptr) -> ()
  }) : () -> ()
}) : () -> ()