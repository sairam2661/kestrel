"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer) -> (), sym_name = "file_constant", sym_visibility = "private"}> ({
  ^bb0(%arg0: !util.buffer):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1088 : index}> : () -> index
    %2 = "stream.file.constant"(%arg0, %1, %0, %1) : (!util.buffer, index, index, index) -> !stream.file
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

