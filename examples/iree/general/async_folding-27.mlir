"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<staging>, index, f32) -> !stream.resource<staging>, sym_name = "FoldAsyncStoreBitcast", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<staging>, %arg1: index, %arg2: f32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.bitcast"(%arg2) : (f32) -> i32
    %2 = "stream.async.store"(%arg0, %arg1, %0, %1) : (!stream.resource<staging>, index, index, i32) -> !stream.resource<staging>
    "util.return"(%2) : (!stream.resource<staging>) -> ()
  }) : () -> ()
}) : () -> ()

