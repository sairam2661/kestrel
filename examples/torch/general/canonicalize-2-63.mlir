#map = affine_map<()[s0] -> (s0)>
#map1 = affine_map<()[s0] -> (s0 + 1)>
"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?],f32>, !torch.vtensor<[?],f32>) -> !torch.vtensor<[?],f32>, sym_name = "torch.symbolic_int$canonicalize"}> ({
  ^bb0(%arg0: !torch.vtensor<[?],f32>, %arg1: !torch.vtensor<[?],f32>):
    %0 = "torch.symbolic_int"() <{max_val = 6 : i64, min_val = 3 : i64, symbol_name = "s0"}> : () -> !torch.int
    %1 = "torch.symbolic_int"() <{max_val = 7 : i64, min_val = 4 : i64, symbol_name = "s0 + 1"}> : () -> !torch.int
    "torch.bind_symbolic_shape"(%arg0, %0) <{shape_expressions = #map}> : (!torch.vtensor<[?],f32>, !torch.int) -> ()
    "torch.bind_symbolic_shape"(%arg1, %0) <{shape_expressions = #map1}> : (!torch.vtensor<[?],f32>, !torch.int) -> ()
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 9223372036854775807 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %6 = "torch.aten.slice.Tensor"(%arg1, %2, %3, %4, %5) : (!torch.vtensor<[?],f32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[?],f32>
    "torch.bind_symbolic_shape"(%6, %0) <{shape_expressions = #map}> : (!torch.vtensor<[?],f32>, !torch.int) -> ()
    %7 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %8 = "torch.aten.add.Tensor"(%arg0, %6, %7) : (!torch.vtensor<[?],f32>, !torch.vtensor<[?],f32>, !torch.int) -> !torch.vtensor<[?],f32>
    "torch.bind_symbolic_shape"(%8, %0) <{shape_expressions = #map}> : (!torch.vtensor<[?],f32>, !torch.int) -> ()
    "func.return"(%8) : (!torch.vtensor<[?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

