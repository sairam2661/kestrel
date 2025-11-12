"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?xf32>, i1) -> (), sym_name = "scf_if", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: i1):
    %0 = "scf.if"(%arg1) ({
      "scf.yield"(%arg0) : (tensor<?xf32>) -> ()
    }, {
      %2 = "arith.addf"(%arg0, %arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
      "scf.yield"(%2) : (tensor<?xf32>) -> ()
    }) : (i1) -> tensor<?xf32>
    %1 = "util.optimization_barrier"(%0) : (tensor<?xf32>) -> tensor<?xf32>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

