"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, tensor<5xf32>) -> (), sym_name = "elementwiseMappable_dynamic_shapes"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<5xf32>):
    %0 = "test.elementwise_mappable"(%arg0, %arg1) : (tensor<?xf32>, tensor<5xf32>) -> tensor<?xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

