"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<staging>, index) -> f32, sym_name = "asyncLoadStore", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<staging>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 5.400000e+00 : f32}> : () -> f32
    %2 = "stream.async.store"(%arg0, %arg1, %0, %1) : (!stream.resource<staging>, index, index, f32) -> !stream.resource<staging>
    %3 = "stream.async.load"(%2, %arg1, %0) : (!stream.resource<staging>, index, index) -> f32
    "util.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

