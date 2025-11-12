"builtin.module"() ({
  "func.func"() <{function_type = (tensor<100x100xf32>, tensor<100x100xf32>) -> tensor<100x100xf32>, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<100x100xf32>, %arg1: tensor<100x100xf32>):
    %0 = "arith.addf"(%arg0, %arg1) : (tensor<100x100xf32>, tensor<100x100xf32>) -> tensor<100x100xf32>
    %1 = "arith.cmpf"(%0, %arg0) <{predicate = "oeq"}> : (tensor<100x100xf32>, tensor<100x100xf32>) -> tensor<100x100xi1>
    scf.if %1 : tensor<100x100xi1> "true" () {
      scf.yield
    }
    : tensor<100x100xi1> "false" () {
      scf.yield
    }
    : tensor<100x100xi1> -> ()
    "func.return"(%0) : (tensor<100x100xf32>) -> ()
  }) : () -> ()
}) : () -> ()