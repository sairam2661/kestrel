"builtin.module"() ({
  "func.func"() <{arg_attrs = [{bufferization.writable = true}, {bufferization.writable = true}, {}], function_type = (tensor<?xf32>, tensor<?xf32>, i1) -> (f32, f32, tensor<?xf32>), sym_name = "write_after_select_read_both"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>, %arg2: i1):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.select"(%arg2, %arg0, %arg1) : (i1, tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    %3 = "tensor.insert"(%0, %2, %1) : (f32, tensor<?xf32>, index) -> tensor<?xf32>
    %4 = "tensor.extract"(%arg0, %1) : (tensor<?xf32>, index) -> f32
    %5 = "tensor.extract"(%arg1, %1) : (tensor<?xf32>, index) -> f32
    "func.return"(%4, %5, %3) : (f32, f32, tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

