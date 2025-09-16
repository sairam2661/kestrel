"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "compare_scf_for"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    "scf.for"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: index):
      "test.compare"(%arg3, %arg0) <{cmp = "GE"}> : (index, index) -> ()
      "test.compare"(%arg3, %arg1) <{cmp = "LT"}> : (index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

