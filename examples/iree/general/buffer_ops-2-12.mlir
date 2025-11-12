"builtin.module"() ({
  "func.func"() <{function_type = (!util.buffer, index, i64) -> (), sym_name = "buffer_fill_i64"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: i64):
    %0 = "arith.constant"() <{value = 104 : index}> : () -> index
    %1 = "arith.constant"() <{value = 208 : index}> : () -> index
    "util.buffer.fill"(%arg2, %arg0, %arg1, %0, %1) : (i64, !util.buffer, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

