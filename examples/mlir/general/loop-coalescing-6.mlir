"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index, index, index) -> (), sym_name = "parametric"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index):
    "scf.for"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg6: index):
      "scf.for"(%arg3, %arg4, %arg5) ({
      ^bb0(%arg7: index):
        "foo"(%arg6, %arg7) : (index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

