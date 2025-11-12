"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x0xi32>, tensor<?x0xi32>) -> tensor<?x0xi32>, sym_name = "add_zero_ext_dynamic"}> ({
  ^bb0(%arg0: tensor<?x0xi32>, %arg1: tensor<?x0xi32>):
    %0 = "stablehlo.add"(%arg0, %arg1) : (tensor<?x0xi32>, tensor<?x0xi32>) -> tensor<?x0xi32>
    "func.return"(%0) : (tensor<?x0xi32>) -> ()
  }) : () -> ()
}) : () -> ()

