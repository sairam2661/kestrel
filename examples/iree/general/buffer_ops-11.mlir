"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index) -> i32, sym_name = "buffer_load", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 100 : index}> : () -> index
    %2 = "util.buffer.load"(%arg0, %arg1, %1, %0) : (!util.buffer, index, index, index) -> i32
    "util.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

