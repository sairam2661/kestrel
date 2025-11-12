"builtin.module"() ({
  "util.func"() <{function_type = () -> (), sym_name = "must_be_preserved", sym_visibility = "private"}> ({
  }) : () -> ()
  "util.func"() <{function_type = () -> i32, sym_name = "can_be_dropped", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  }) : () -> ()
  "util.func"() <{function_type = (i1) -> i32, sym_name = "simplifyIfThenUnreachablePreserveSideEffects", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1):
    %0 = "scf.if"(%arg0) ({
      "util.scf.unreachable"() <{message = "then branch"}> : () -> ()
      %2 = "ub.poison"() <{value = #ub.poison}> : () -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      "util.call"() <{callee = @must_be_preserved}> : () -> ()
      %1 = "util.call"() <{callee = @can_be_dropped, tied_operands = [-1 : index]}> : () -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) : (i1) -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

