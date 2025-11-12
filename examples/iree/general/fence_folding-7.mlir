"builtin.module"() ({
  "util.func"() <{function_type = () -> i32, sym_name = "fence_await_none", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "hal.fence.await"(%0) <{flags = 0 : i64}> : (i32) -> i32
    "util.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

