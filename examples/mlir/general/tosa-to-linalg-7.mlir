"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xf32>, tensor<?xf32>) -> tensor<5xf32>, sym_name = "test_add_1d_broadcast_dynamic_to_static"}> ({
  ^bb0(%arg0: tensor<5xf32>, %arg1: tensor<?xf32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<5xf32>, tensor<?xf32>) -> tensor<5xf32>
    "func.return"(%0) : (tensor<5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

