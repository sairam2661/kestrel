"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xi32>, tensor<?x?xi32>) -> (tensor<?x?xi32>, tensor<?x?xi32>), sym_name = "cross_dialect_interaction"}> ({
  ^bb0(%arg0: tensor<?x?xi32>, %arg1: tensor<?x?xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<?x?xi32>, tensor<?x?xi32>) -> tensor<?x?xi32>
    %1 = "arith.cmpi"(%0, %arg1, "eq") : (tensor<?x?xi32>, tensor<?x?xi32>) -> tensor<?x?xi32>
    %2 = "scf.if"(%1) ({
      %3 = "arith.addf"(%0, %1) : (tensor<?x?xi32>, tensor<?x?xi32>) -> tensor<?x?xi32>
      "scf.yield"(%3) : (tensor<?x?xi32>) -> ()
    }, {
      %4 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<?x?xi32>, tensor<?x?xi32>) -> tensor<?x?xi32>
      "scf.yield"(%4) : (tensor<?x?xi32>) -> ()
    }) : (tensor<?x?xi32>) -> tensor<?x?xi32>
    "func.return"(%2, %0) : (tensor<?x?xi32>, tensor<?x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()