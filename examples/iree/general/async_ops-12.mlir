"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<staging>, index) -> f32, sym_name = "asyncLoad", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<staging>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "stream.async.load"(%arg0, %arg1, %0) : (!stream.resource<staging>, index, index) -> f32
    "util.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

