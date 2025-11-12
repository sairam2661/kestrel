"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, !stream.file, !stream.resource<variable>) -> !stream.timepoint, sym_name = "file_read", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.file, %arg2: !stream.resource<variable>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 1088 : index}> : () -> index
    %3 = "stream.file.read"(%arg1, %1, %arg2, %2, %0, %2, %arg0) : (!stream.file, i64, !stream.resource<variable>, index, index, index, !stream.timepoint) -> !stream.timepoint
    "util.return"(%3) : (!stream.timepoint) -> ()
  }) : () -> ()
}) : () -> ()

