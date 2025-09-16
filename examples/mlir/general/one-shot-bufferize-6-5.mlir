"builtin.module"() ({
  "func.func"() <{arg_attrs = [{bufferization.writable = true}, {}, {}], function_type = (tensor<?xf32>, f32, index) -> tensor<?xf32>, sym_name = "insert_op"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: f32, %arg2: index):
    %0 = "tensor.insert"(%arg1, %arg0, %arg2) : (f32, tensor<?xf32>, index) -> tensor<?xf32>
    "func.return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

