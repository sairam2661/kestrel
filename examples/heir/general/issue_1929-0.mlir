"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (f32, f32) -> f32, sym_name = "float_secret_loop_index_step"}> ({
  ^bb0(%arg4: f32, %arg5: f32):
    %6 = "arith.constant"() <{value = 0 : index}> : () -> index
    %7 = "arith.constant"() <{value = 1 : index}> : () -> index
    %8 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %9 = "arith.fptosi"(%arg4) : (f32) -> i32
    %10 = "arith.index_cast"(%9) : (i32) -> index
    %11 = "scf.for"(%6, %10, %7, %8) ({
    ^bb0(%arg6: index, %arg7: f32):
      %12 = "arith.mulf"(%arg7, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "scf.yield"(%12) : (f32) -> ()
    }) {upper = 6 : i64} : (index, index, index, f32) -> f32
    "func.return"(%11) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (f32, f32) -> f32, sym_name = "float_secret_loop_signless_integer_step"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %3 = "arith.fptosi"(%arg0) : (f32) -> i32
    %4 = "scf.for"(%0, %3, %1, %2) ({
    ^bb0(%arg2: i32, %arg3: f32):
      %5 = "arith.mulf"(%arg3, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "scf.yield"(%5) : (f32) -> ()
    }) {upper = 6 : i64} : (i32, i32, i32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

