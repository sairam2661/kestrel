"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "master_block_arg"}> ({
    "omp.master"() ({
    ^bb0(%arg0: index, %arg1: index):
      "test.payload"(%arg0, %arg1) : (index, index) -> ()
      "omp.terminator"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

