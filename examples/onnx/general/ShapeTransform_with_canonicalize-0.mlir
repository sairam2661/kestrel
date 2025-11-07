#map = affine_map<(d0, d1) -> (d1, d0)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x5xf32>) -> tensor<5x3xf32>, sym_name = "test_shape_transform"}> ({
  ^bb0(%arg0: tensor<3x5xf32>):
    %0 = "onnx.ShapeTransform"(%arg0) {index_map = #map} : (tensor<3x5xf32>) -> tensor<5x3xf32>
    "func.return"(%0) : (tensor<5x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

