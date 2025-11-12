"builtin.module"() ({
  "spirv.func"() <{function_type = (tensor<?x?xf32>, tensor<?x?xf32>) -> (tensor<?x?xf32>, tensor<?x?xf32>), sym_name = "test_dynamic_add"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>):
    %0:2 = "arith.addf"(%arg0, %arg1) : (tensor<?x?xf32>, tensor<?x?xf32>) -> (tensor<?x?xf32>, tensor<?x?xf32>)
    "spirv.ReturnValue"(%0#0, %0#1) : (tensor<?x?xf32>, tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()