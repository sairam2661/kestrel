"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "foo", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "critical_block_arg"}> ({
    "omp.critical"() ({
    ^bb0(%arg0: index, %arg1: index):
      "func.call"(%arg0, %arg1) <{callee = @foo}> : (index, index) -> ()
      "omp.terminator"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

