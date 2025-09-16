"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xf32>, tensor<?xf32>) -> tensor<?xf32>, sym_name = "test_add_1d_broadcast_static_to_dynamic"}> ({
  ^bb0(%arg0: tensor<1xf32>, %arg1: tensor<?xf32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<1xf32>, tensor<?xf32>) -> tensor<?xf32>
    "func.return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

