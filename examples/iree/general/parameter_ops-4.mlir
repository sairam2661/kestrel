"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, !stream.resource<transient>) -> !stream.timepoint, sym_name = "parameterWrite", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.resource<transient>):
    %0 = "arith.constant"() <{value = 50 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 100 : index}> : () -> index
    %2 = "arith.constant"() <{value = 200 : index}> : () -> index
    %3 = "arith.constant"() <{value = 300 : index}> : () -> index
    %4 = "stream.parameter.write"(%arg1, %3, %1, %2, %0, %arg0) <{target_key = "key", target_scope = "scope"}> : (!stream.resource<transient>, index, index, index, i64, !stream.timepoint) -> !stream.timepoint
    "util.return"(%4) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

