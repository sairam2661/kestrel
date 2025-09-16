"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<?x?xf32>, f32, i1) -> (tensor<?x?xf32>, tensor<?x?xf32>), sym_name = "no_cse_single_block_ops_different_bodies"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>, %arg2: f32, %arg3: i1):
    %0 = "test.cse_of_single_block_op"(%arg0, %arg1) ({
    ^bb0(%arg6: f32, %arg7: f32):
      %5 = "arith.divf"(%arg6, %arg7) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %6 = "arith.remf"(%arg6, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %7 = "arith.select"(%arg3, %5, %6) : (i1, f32, f32) -> f32
      "test.region_yield"(%7) : (f32) -> ()
    }) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    %1 = "test.cse_of_single_block_op"(%arg0, %arg1) ({
    ^bb0(%arg4: f32, %arg5: f32):
      %2 = "arith.divf"(%arg4, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %3 = "arith.remf"(%arg4, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %4 = "arith.select"(%arg3, %3, %2) : (i1, f32, f32) -> f32
      "test.region_yield"(%4) : (f32) -> ()
    }) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%0, %1) : (tensor<?x?xf32>, tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

