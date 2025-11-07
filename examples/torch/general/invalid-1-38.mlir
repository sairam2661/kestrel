#map = affine_map<() -> (1)>
"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?],f32>) -> !torch.vtensor<[?],f32>, sym_name = "torch.symbolic_int$no_shape_symbols_no_symbols_in_map"}> ({
  ^bb0(%arg0: !torch.vtensor<[?],f32>):
    "torch.bind_symbolic_shape"(%arg0) <{shape_expressions = #map}> : (!torch.vtensor<[?],f32>) -> ()
    "func.return"(%arg0) : (!torch.vtensor<[?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

