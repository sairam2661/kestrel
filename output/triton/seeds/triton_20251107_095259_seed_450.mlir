"builtin.module"() ({
  "tt.func"() <{function_type = (!tt_ptr_f16, !tt_ptr_f16) -> !tt_ptr_f16, sym_name = "fold_addptr_tensor"}> ({
  ^bb0(%arg0: !tt_ptr_f16, %arg1: !tt_ptr_f16):
    %0 = "tt.make_range"() <{start = 0 : index, end = 128 : index, step = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %2 = "tt.addptr"(%arg0, %1) : (!tt_ptr_f16, i32) -> !tt_ptr_f16
    %3 = "tt.reduce"(%2, %0) <{operation = "add"}> : (!tt_ptr_f16, index) -> !tt_ptr_f16
    "tt.return"(%3) : (!tt_ptr_f16) -> ()
  }) : () -> ()
}) : () -> ()