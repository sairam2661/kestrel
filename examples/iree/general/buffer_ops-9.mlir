"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index) -> i1, sym_name = "buffer_compare", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 100 : index}> : () -> index
    %2 = "arith.constant"() <{value = 200 : index}> : () -> index
    %3 = "util.buffer.compare"(%arg0, %arg1, %1, %arg0, %arg1, %2, %0) : (!util.buffer, index, index, !util.buffer, index, index, index) -> i1
    "util.return"(%3) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

