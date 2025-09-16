"builtin.module"() ({
  "func.func"() <{arg_attrs = [{bufferization.writable = true}], function_type = (tensor<?xf32>) -> (f32, tensor<?xf32>, f32), sym_name = "execute_region_with_conflict"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 7 : index}> : () -> index
    %2:3 = "scf.execute_region"() ({
      %4 = "tensor.insert"(%0, %arg0, %1) : (f32, tensor<?xf32>, index) -> tensor<?xf32>
      "scf.yield"(%0, %4, %0) : (f32, tensor<?xf32>, f32) -> ()
    }) : () -> (f32, tensor<?xf32>, f32)
    %3 = "tensor.extract"(%arg0, %1) : (tensor<?xf32>, index) -> f32
    "func.return"(%2#0, %2#1, %3) : (f32, tensor<?xf32>, f32) -> ()
  }) : () -> ()
}) : () -> ()

