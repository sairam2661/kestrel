"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, !stream.file, !stream.resource<variable>) -> (), sym_name = "file_write", sym_visibility = "private"}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !stream.file, %arg2: !stream.resource<variable>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 1088 : index}> : () -> index
    %3 = "stream.file.write"(%arg2, %2, %0, %arg1, %1, %2, %arg0) : (!stream.resource<variable>, index, index, !stream.file, i64, index, !stream.timepoint) -> !stream.timepoint
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

