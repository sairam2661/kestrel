#map = affine_map<(d0, d1, d2) -> (0, d2 floordiv 64, d0, d1 floordiv 32, d1 mod 32, d2 mod 64)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<3x4x5xf16, #map>, memref<3x4x5xf16, #map>) -> memref<3x4x5xf16, #map>, sym_name = "should_normalize"}> ({
  ^bb0(%arg0: memref<3x4x5xf16, #map>, %arg1: memref<3x4x5xf16, #map>):
    %0 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<3x4x5xf16, #map>
    %1 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<3xi64>
    "zlow.add"(%arg0, %arg0, %1, %0) {layout = "3D"} : (memref<3x4x5xf16, #map>, memref<3x4x5xf16, #map>, memref<3xi64>, memref<3x4x5xf16, #map>) -> ()
    "func.return"(%0) : (memref<3x4x5xf16, #map>) -> ()
  }) : () -> ()
}) : () -> ()

