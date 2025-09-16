"builtin.module"() ({
  "func.func"() <{function_type = (i1, tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>, sym_name = "if"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>):
    %0 = "scf.if"(%arg0) ({
      "scf.yield"(%arg1) : (tensor<?xf32>) -> ()
    }, {
      "scf.yield"(%arg2) : (tensor<?xf32>) -> ()
    }) : (i1) -> tensor<?xf32>
    "func.return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

