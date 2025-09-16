"builtin.module"() ({
  "func.func"() <{function_type = (i1, f32, f32) -> f32, sym_name = "ite"}> ({
  ^bb0(%arg9: i1, %arg10: f32, %arg11: f32):
    %5 = "scf.if"(%arg9) ({
      "scf.yield"(%arg10) : (f32) -> ()
    }, {
      "scf.yield"(%arg11) : (f32) -> ()
    }) : (i1) -> f32
    "func.return"(%5) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1, f32, f32) -> f32, sym_name = "also_ite"}> ({
  ^bb0(%arg6: i1, %arg7: f32, %arg8: f32):
    %4 = "scf.if"(%arg6) ({
      "scf.yield"(%arg7) : (f32) -> ()
    }, {
      "scf.yield"(%arg8) : (f32) -> ()
    }) : (i1) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1, f32, f32) -> f32, sym_name = "reverse_ite"}> ({
  ^bb0(%arg3: i1, %arg4: f32, %arg5: f32):
    %3 = "scf.if"(%arg3) ({
      "scf.yield"(%arg5) : (f32) -> ()
    }, {
      "scf.yield"(%arg4) : (f32) -> ()
    }) : (i1) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1, f32, f32) -> f32, sym_name = "user"}> ({
  ^bb0(%arg0: i1, %arg1: f32, %arg2: f32):
    %0 = "func.call"(%arg0, %arg1, %arg2) <{callee = @also_ite}> : (i1, f32, f32) -> f32
    %1 = "func.call"(%arg0, %arg1, %arg2) <{callee = @ite}> : (i1, f32, f32) -> f32
    %2 = "func.call"(%arg0, %0, %1) <{callee = @reverse_ite}> : (i1, f32, f32) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

