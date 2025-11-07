#map = affine_map<(d0, d1) -> (d0 floordiv 32, d0 mod 32, d1 floordiv 64, d1 mod 64)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d2, d0, d1, d3)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x128xf32>) -> tensor<2x4x32x64xf32>, sym_name = "shape_transform_compose"}> ({
  ^bb0(%arg0: tensor<128x128xf32>):
    %0 = "onnx.ShapeTransform"(%arg0) {index_map = #map} : (tensor<128x128xf32>) -> tensor<4x32x2x64xf32>
    %1 = "onnx.ShapeTransform"(%0) {index_map = #map1} : (tensor<4x32x2x64xf32>) -> tensor<2x4x32x64xf32>
    "onnx.Return"(%1) : (tensor<2x4x32x64xf32>) -> ()
  }) : () -> ()
}) : () -> ()

