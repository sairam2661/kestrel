#map = affine_map<(d0, d1) -> (0, d1 floordiv 64, 0, d0 floordiv 32, d0 mod 32, d1 mod 64)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<129x65xf32>) -> memref<129x65xf32>, sym_name = "test_zlow_relu_norm"}> ({
  ^bb0(%arg0: memref<129x65xf32>):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<129x65xf32>
    %1 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<129x65xf16, #map>
    %2 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<129x65xf16, #map>
    %3 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2xi64>
    "zlow.stick"(%arg0, %2) : (memref<129x65xf32>, memref<129x65xf16, #map>) -> ()
    "zlow.relu"(%2, %3, %1) {layout = "2D"} : (memref<129x65xf16, #map>, memref<2xi64>, memref<129x65xf16, #map>) -> ()
    "zlow.unstick"(%1, %0) : (memref<129x65xf16, #map>, memref<129x65xf32>) -> ()
    "memref.dealloc"(%2) : (memref<129x65xf16, #map>) -> ()
    "memref.dealloc"(%1) : (memref<129x65xf16, #map>) -> ()
    "func.return"(%0) : (memref<129x65xf32>) -> ()
  }) : () -> ()
}) : () -> ()

