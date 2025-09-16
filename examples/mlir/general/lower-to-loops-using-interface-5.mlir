"builtin.module"() ({
  "func.func"() <{function_type = (memref<64xf32>, memref<64xf32>, memref<64xf32>) -> (), sym_name = "map"}> ({
  ^bb0(%arg1: memref<64xf32>, %arg2: memref<64xf32>, %arg3: memref<64xf32>):
    "linalg.map"(%arg1, %arg2, %arg3) ({
    ^bb0(%arg4: f32, %arg5: f32):
      %2 = "arith.addf"(%arg4, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%2) : (f32) -> ()
    }) : (memref<64xf32>, memref<64xf32>, memref<64xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["linalg.map"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.structured.convert_to_loops"(%0) : (!transform.any_op) -> !transform.any_op
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

