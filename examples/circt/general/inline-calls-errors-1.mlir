"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "RecursiveCalls"}> ({
    "llhd.combinational"() ({
      "func.call"() <{callee = @foo}> : () -> ()
      "llhd.yield"() : () -> ()
    }) : () -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "foo"}> ({
    "func.call"() <{callee = @bar}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "bar"}> ({
    "func.call"() <{callee = @foo}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

