"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<?x?xf32>) -> (tensor<?x?xf32>, tensor<?x?xf32>), sym_name = "no_cse_region_difference_simple"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>):
    %0 = "test.cse_of_single_block_op"(%arg0, %arg1) ({
    ^bb0(%arg4: f32, %arg5: f32):
      "test.region_yield"(%arg4) : (f32) -> ()
    }) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    %1 = "test.cse_of_single_block_op"(%arg0, %arg1) ({
    ^bb0(%arg2: f32, %arg3: f32):
      "test.region_yield"(%arg3) : (f32) -> ()
    }) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%0, %1) : (tensor<?x?xf32>, tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

