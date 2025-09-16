"builtin.module"() ({
  "func.func"() <{arg_attrs = [{bufferization.writable = true}, {}, {}, {}], function_type = (tensor<?xf32>, i1, index, f32) -> (tensor<?xf32>, index), sym_name = "simple_scf_if"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: i1, %arg2: index, %arg3: f32):
    %0:2 = "scf.if"(%arg1) ({
      "scf.yield"(%arg0, %arg2) : (tensor<?xf32>, index) -> ()
    }, {
      %1 = "tensor.insert"(%arg3, %arg0, %arg2) : (f32, tensor<?xf32>, index) -> tensor<?xf32>
      "scf.yield"(%1, %arg2) : (tensor<?xf32>, index) -> ()
    }) : (i1) -> (tensor<?xf32>, index)
    "func.return"(%0#0, %0#1) : (tensor<?xf32>, index) -> ()
  }) : () -> ()
}) : () -> ()

