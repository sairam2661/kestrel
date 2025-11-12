"builtin.module"() ({
  "util.func"() <{function_type = (i1) -> i32, sym_name = "simplifyIfThenUnreachable", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1):
    %0 = "scf.if"(%arg0) ({
      "util.scf.unreachable"() <{message = "then branch"}> : () -> ()
      %2 = "ub.poison"() <{value = #ub.poison}> : () -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) : (i1) -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

