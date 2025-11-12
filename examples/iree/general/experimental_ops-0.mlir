"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, !util.buffer) -> !hal.file, sym_name = "file_from_memory", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device, %arg1: !util.buffer):
    %0 = "arith.constant"() <{value = -1 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 100 : index}> : () -> index
    %2 = "arith.constant"() <{value = 200 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "hal.ex.file.from_memory"(%arg0, %0, %arg1, %1, %2, %3) <{access = 1 : i32}> : (!hal.device, i64, !util.buffer, index, index, i32) -> !hal.file
    "util.return"(%4) : (!hal.file) -> ()
  }) : () -> ()
}) : () -> ()

