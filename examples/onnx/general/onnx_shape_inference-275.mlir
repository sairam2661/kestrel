#map = affine_map<(d0, d1) -> (d1 floordiv 64, d0, d1 mod 64)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x128xf32>) -> tensor<*xf32>, sym_name = "test_shape_transform"}> ({
  ^bb0(%arg0: tensor<3x128xf32>):
    %0 = "onnx.ShapeTransform"(%arg0) {index_map = #map} : (tensor<3x128xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

