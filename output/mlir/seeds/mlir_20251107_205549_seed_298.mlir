"builtin.module"() ({
  "spirv.func"() <{function_type = (tensor<?x?xi32>, tensor<?x?xi32>) -> tensor<?x?xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<?x?xi32>, %arg1: tensor<?x?xi32>):
    %0 = "arith.addsi"(%arg0, %arg1) : (tensor<?x?xi32>, tensor<?x?xi32>) -> tensor<?x?xi32>
    "spirv.ReturnValue"(%0) : (tensor<?x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()