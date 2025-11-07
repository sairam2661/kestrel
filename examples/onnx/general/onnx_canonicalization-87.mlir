#map = affine_map<(d0, d1) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x128xf32>) -> tensor<128x128xf32>, sym_name = "shape_transform_identity_map"}> ({
  ^bb0(%arg0: tensor<128x128xf32>):
    %0 = "onnx.ShapeTransform"(%arg0) {index_map = #map} : (tensor<128x128xf32>) -> tensor<128x128xf32>
    "onnx.Return"(%0) : (tensor<128x128xf32>) -> ()
  }) : () -> ()
}) : () -> ()

