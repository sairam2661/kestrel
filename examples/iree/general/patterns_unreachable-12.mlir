"builtin.module"() ({
  "util.func"() <{function_type = (i1, i1) -> i32, sym_name = "simplifyNestedIfInnerUnreachable", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "scf.if"(%arg0) ({
      %2 = "scf.if"(%arg1) ({
        "util.scf.unreachable"() <{message = "inner then"}> : () -> ()
        %4 = "ub.poison"() <{value = #ub.poison}> : () -> i32
        "scf.yield"(%4) : (i32) -> ()
      }, {
        "test.side_effect"() : () -> ()
        %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
        "scf.yield"(%3) : (i32) -> ()
      }) : (i1) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      "test.side_effect"() : () -> ()
      %1 = "arith.constant"() <{value = 24 : i32}> : () -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) : (i1) -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

