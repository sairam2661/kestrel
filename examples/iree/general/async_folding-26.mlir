"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<staging>, index) -> f32, sym_name = "FoldAsyncLoadBitcast", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<staging>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "stream.async.load"(%arg0, %arg1, %0) : (!stream.resource<staging>, index, index) -> i32
    %2 = "arith.bitcast"(%1) : (i32) -> f32
    "util.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

