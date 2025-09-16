"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> (f32, tensor<?xf32>, f32), sym_name = "execute_region_test"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 7 : index}> : () -> index
    %3:3 = "scf.execute_region"() ({
      %4 = "tensor.insert"(%1, %arg0, %2) : (f32, tensor<?xf32>, index) -> tensor<?xf32>
      "scf.yield"(%0, %4, %1) : (f32, tensor<?xf32>, f32) -> ()
    }) : () -> (f32, tensor<?xf32>, f32)
    "func.return"(%3#0, %3#1, %3#2) : (f32, tensor<?xf32>, f32) -> ()
  }) : () -> ()
}) : () -> ()

