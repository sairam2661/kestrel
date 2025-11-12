"builtin.module"() ({
  "util.func"() <{function_type = () -> f32, sym_name = "scalar_const_trunc", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = 5.000000e+00 : f32}> : () -> f32
    %1 = "iree_unregistered.test_fprange"(%0) : (f32) -> f32
    "util.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

