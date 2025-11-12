"builtin.module"() ({
  "util.func"() <{function_type = (index) -> !stream.resource<variable>, sym_name = "PropagateTypeChangeCloneableOps", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 128 : index}> : () -> index
    %2 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %3 = "stream.async.splat"(%2, %arg0) : (i32, index) -> !stream.resource<transient>
    %4 = "stream.async.clone"(%3, %arg0, %arg0) : (!stream.resource<transient>, index, index) -> !stream.resource<variable>
    "util.return"(%4) : (!stream.resource<variable>) -> ()
  }) : () -> ()
}) : () -> ()

