"builtin.module"() ({
  "func.func"() <{function_type = (!util.buffer, index) -> i32, sym_name = "buffer_load_i32"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index):
    %0 = "arith.constant"() <{value = 128 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "util.buffer.load"(%arg0, %arg1, %0, %1) : (!util.buffer, index, index, index) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

