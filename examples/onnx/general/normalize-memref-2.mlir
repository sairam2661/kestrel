#map = affine_map<(d0) -> (0, d0 floordiv 64, 0, 0, 31, d0 mod 64)>
#map1 = affine_map<(d0, d1) -> (0, d1 floordiv 64, 0, d0 floordiv 32, d0 mod 32, d1 mod 64)>
#map2 = affine_map<(d0, d1) -> (d0, d1 floordiv 64, 0, 0, 31, d1 mod 64)>
#map3 = affine_map<(d0, d1, d2) -> (0, d2 floordiv 64, d0, d1 floordiv 32, d1 mod 32, d2 mod 64)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d2 floordiv 64, 0, d1 floordiv 32, d1 mod 32, d2 mod 64)>
#map5 = affine_map<(d0, d1, d2, d3) -> (d0, d3 floordiv 64, d1, d2 floordiv 32, d2 mod 32, d3 mod 64)>
#map6 = affine_map<(d0, d1, d2, d3) -> (d0, d2 floordiv 64, d3, d1 floordiv 32, d1 mod 32, d2 mod 64)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<129xf32>, memref<129x65xf32>, memref<129x65xf32>, memref<129x65x129xf32>, memref<129x65x129xf32>, memref<129x65x129x65xf32>, memref<129x65x129x65xf32>) -> (), sym_name = "test_stick_norm"}> ({
  ^bb0(%arg0: memref<129xf32>, %arg1: memref<129x65xf32>, %arg2: memref<129x65xf32>, %arg3: memref<129x65x129xf32>, %arg4: memref<129x65x129xf32>, %arg5: memref<129x65x129x65xf32>, %arg6: memref<129x65x129x65xf32>):
    %0 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<129xf16, #map>
    "zlow.stick"(%arg0, %0) : (memref<129xf32>, memref<129xf16, #map>) -> ()
    %1 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<129x65xf16, #map1>
    "zlow.stick"(%arg1, %1) : (memref<129x65xf32>, memref<129x65xf16, #map1>) -> ()
    %2 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<129x65xf16, #map2>
    "zlow.stick"(%arg2, %2) : (memref<129x65xf32>, memref<129x65xf16, #map2>) -> ()
    %3 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<129x65x129xf16, #map3>
    "zlow.stick"(%arg3, %3) : (memref<129x65x129xf32>, memref<129x65x129xf16, #map3>) -> ()
    %4 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<129x65x129xf16, #map4>
    "zlow.stick"(%arg4, %4) : (memref<129x65x129xf32>, memref<129x65x129xf16, #map4>) -> ()
    %5 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<129x65x129x65xf16, #map5>
    "zlow.stick"(%arg5, %5) : (memref<129x65x129x65xf32>, memref<129x65x129x65xf16, #map5>) -> ()
    %6 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<129x65x129x65xf16, #map6>
    "zlow.stick"(%arg6, %6) : (memref<129x65x129x65xf32>, memref<129x65x129x65xf16, #map6>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

