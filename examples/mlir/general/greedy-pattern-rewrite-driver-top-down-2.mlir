"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "f"}> ({
    %0 = "arith.constant"() <{value = false}> : () -> i1
    %1 = "scf.if"(%0) ({
      "scf.yield"(%0) : (i1) -> ()
    }, {
      "scf.yield"(%0) : (i1) -> ()
    }) : (i1) -> i1
    %2 = "arith.select"(%0, %1, %1) : (i1, i1, i1) -> i1
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

