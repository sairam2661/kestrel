"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64, !hal.device, i64) -> (!hal.device, i64), sym_name = "allocator_select", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64, %arg2: !hal.device, %arg3: i64):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2:2 = "hal.allocator.select"(%arg0, %arg2, %arg1, %arg3, %0, %1) : (!hal.device, !hal.device, i64, i64, i32, i32) -> (!hal.device, i64)
    "util.return"(%2#0, %2#1) : (!hal.device, i64) -> ()
  }) : () -> ()
}) : () -> ()

