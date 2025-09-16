"builtin.module"() ({
  "func.func"() <{function_type = (i1, index, memref<?xf32>, i8) -> (), sym_name = "outline_empty_if_else"}> ({
  ^bb0(%arg0: i1, %arg1: index, %arg2: memref<?xf32>, %arg3: i8):
    "scf.if"(%arg0) ({
      "scf.yield"() : () -> ()
    }, {
      "some_op"(%arg0, %arg2) : (i1, memref<?xf32>) -> ()
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

