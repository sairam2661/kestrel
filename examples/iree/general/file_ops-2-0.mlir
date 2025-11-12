"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer) -> !stream.file, sym_name = "file_constant", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 100 : index}> : () -> index
    %2 = "arith.constant"() <{value = 200 : index}> : () -> index
    %3 = "arith.constant"() <{value = 300 : index}> : () -> index
    %4 = "stream.file.constant"(%arg0, %3, %1, %2) : (!util.buffer, index, index, index) -> !stream.file
    "util.return"(%4) : (!stream.file) -> ()
  }) : () -> ()
}) : () -> ()

