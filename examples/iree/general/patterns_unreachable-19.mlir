"builtin.module"() ({
  "util.func"() <{function_type = () -> (), sym_name = "dontRemoveOpsWithSideEffects"}> ({
    "some.side.effect"() : () -> ()
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "util.unreachable"() : () -> ()
  }) : () -> ()
}) : () -> ()

