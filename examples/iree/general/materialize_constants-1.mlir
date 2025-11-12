"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "constant_user", sym_visibility = "private"}> ({
    %0 = "hal.executable.constant.load"() <{key = "foo"}> : () -> i32
    %1 = "util.optimization_barrier"(%0) : (i32) -> i32
    %2 = "hal.executable.constant.load"() <{key = "bar"}> : () -> i32
    %3 = "util.optimization_barrier"(%2) : (i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

