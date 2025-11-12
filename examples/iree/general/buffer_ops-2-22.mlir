"builtin.module"() ({
  "func.func"() <{function_type = (!util.buffer, index) -> i64, sym_name = "buffer_hash"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index):
    %0 = "arith.constant"() <{value = 128 : index}> : () -> index
    %1 = "arith.constant"() <{value = 17 : index}> : () -> index
    %2 = "util.buffer.hash"(%arg0, %arg1, %0, %1) : (!util.buffer, index, index, index) -> i64
    "func.return"(%2) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

