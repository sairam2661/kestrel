"builtin.module"() ({
  "util.func"() <{function_type = (i32) -> i32, sym_name = "simplifyWhileBodyUnreachable", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i32):
    %0 = "scf.while"(%arg0) ({
    ^bb0(%arg2: i32):
      %1 = "test.condition"(%arg2) : (i32) -> i1
      "scf.condition"(%1, %arg2) : (i1, i32) -> ()
    }, {
    ^bb0(%arg1: i32):
      "util.scf.unreachable"() <{message = "body unreachable"}> : () -> ()
      "scf.yield"(%arg1) : (i32) -> ()
    }) : (i32) -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

