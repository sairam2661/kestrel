"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "arith_shift_left_index"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42 : index}> : () -> index
    %1 = "arith.index_cast"(%arg0) : (i32) -> index
    %2 = "arith.shli"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

