"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "nested_region2"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    "scf.for"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: index):
      "scf.for"(%arg0, %arg1, %arg2) ({
      ^bb0(%arg4: index):
        "scf.for"(%arg0, %arg1, %arg2) ({
        ^bb0(%arg5: index):
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

