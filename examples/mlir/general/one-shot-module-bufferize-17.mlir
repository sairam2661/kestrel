#map = affine_map<(d0)[s0, s1] -> (d0)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> (), sym_name = "external_func", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{arg_attrs = [{bufferization.buffer_layout = #map}, {}, {}], function_type = (tensor<?xf32>, tensor<?xf32>, tensor<?xf32>) -> (), sym_name = "callee"}> ({
  ^bb0(%arg3: tensor<?xf32>, %arg4: tensor<?xf32>, %arg5: tensor<?xf32>):
    "func.call"(%arg3) <{callee = @external_func}> : (tensor<?xf32>) -> ()
    "func.call"(%arg4) <{callee = @external_func}> : (tensor<?xf32>) -> ()
    "func.call"(%arg5) <{callee = @external_func}> : (tensor<?xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{bufferization.buffer_layout = #map, bufferization.writable = false}, {bufferization.buffer_layout = #map, bufferization.writable = false}, {bufferization.writable = false}], function_type = (tensor<?xf32>, tensor<?xf32>, tensor<?xf32>) -> (), sym_name = "entry"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>):
    "func.call"(%arg0, %arg1, %arg2) <{callee = @callee}> : (tensor<?xf32>, tensor<?xf32>, tensor<?xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

