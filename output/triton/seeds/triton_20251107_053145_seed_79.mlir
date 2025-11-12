"builtin.module"() ({
  "tt.func"() <{function_type = (!ttptr, i32) -> !ttptr, sym_name = "fold_addptr_scalar"}> ({
  ^bb0(%arg0: !ttptr, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    %2 = "tt.addptr"(%arg0, %1) : (!ttptr, i32) -> !ttptr
    "tt.return"(%2) : (!ttptr) -> ()
  }) : () -> ()
}) : () -> ()