"builtin.module"() ({
  "util.func"() <{function_type = (index, index, index, i32) -> i32, sym_name = "simplifyForBodyUnreachable", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: i32):
    %0 = "scf.for"(%arg0, %arg1, %arg2, %arg3) ({
    ^bb0(%arg4: index, %arg5: i32):
      "util.scf.unreachable"() <{message = "loop body"}> : () -> ()
      "scf.yield"(%arg5) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

