"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, !stream.resource<transient>, index, index) -> !stream.timepoint, sym_name = "FoldParameterReadTargetSubview", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.resource<transient>, %arg2: index, %arg3: index):
    %0 = "arith.constant"() <{value = 50 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 100 : index}> : () -> index
    %2 = "arith.constant"() <{value = 200 : index}> : () -> index
    %3 = "arith.constant"() <{value = 300 : index}> : () -> index
    %4 = "stream.resource.subview"(%arg1, %arg3, %arg2, %3) : (!stream.resource<transient>, index, index, index) -> !stream.resource<transient>
    %5 = "stream.parameter.read"(%0, %4, %3, %1, %2, %arg0) <{source_key = "key", source_scope = "scope"}> : (i64, !stream.resource<transient>, index, index, index, !stream.timepoint) -> !stream.timepoint
    "util.return"(%5) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

