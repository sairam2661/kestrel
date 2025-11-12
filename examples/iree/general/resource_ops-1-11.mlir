"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<staging>, index) -> i32, sym_name = "resourceLoad", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<staging>, %arg1: index):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "stream.resource.load"(%arg0, %arg1, %0) : (!stream.resource<staging>, index, index) -> i32
    "util.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

