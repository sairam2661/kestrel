#map = affine_map<()[s0] -> (s0 * 128)>
#map1 = affine_map<(d0) -> (-d0 + 391, 128)>
#map2 = affine_map<(d0)[s0] -> (-d0 + s0, 8)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map5 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map6 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "matmul_scalar_loads"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 384 : index}> : () -> index
    %3 = "arith.constant"() <{value = 32 : index}> : () -> index
    %4 = "arith.constant"() <{value = 8 : index}> : () -> index
    %5 = "arith.constant"() <{value = 128 : index}> : () -> index
    %6 = "arith.constant"() <{value = 16 : index}> : () -> index
    %7 = "arith.constant"() <{value = dense<0.000000e+00> : vector<8x32xf32>}> : () -> vector<8x32xf32>
    %8 = "arith.constant"() <{value = dense<6.000000e+00> : vector<8x32xf32>}> : () -> vector<8x32xf32>
    %9 = "memref.alloca"() <{alignment = 64 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<8x32xf32>
    %10 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<391x384xf32>
    %11 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<384x384xf32>
    %12 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<384xf32>
    %13 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<391x384xf32>
    %14 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %15 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %16 = "affine.apply"(%15) <{map = #map}> : (index) -> index
    %17 = "affine.apply"(%14) <{map = #map}> : (index) -> index
    %18 = "affine.min"(%16) <{map = #map1}> : (index) -> index
    %19 = "memref.subview"(%10, %16, %18) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: -9223372036854775808, 384>, static_strides = array<i64: 1, 1>}> : (memref<391x384xf32>, index, index) -> memref<?x384xf32, strided<[384, 1], offset: ?>>
    %20 = "memref.subview"(%13, %16, %17, %18) <{operandSegmentSizes = array<i32: 1, 2, 1, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, 128>, static_strides = array<i64: 1, 1>}> : (memref<391x384xf32>, index, index, index) -> memref<?x128xf32, strided<[384, 1], offset: ?>>
    %21 = "memref.subview"(%12, %17) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 128>, static_strides = array<i64: 1>}> : (memref<384xf32>, index) -> memref<128xf32, strided<[1], offset: ?>>
    %22 = "memref.subview"(%11, %17) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 384, 128>, static_strides = array<i64: 1, 1>}> : (memref<384x384xf32>, index) -> memref<384x128xf32, strided<[384, 1], offset: ?>>
    "scf.for"(%1, %18, %4) ({
    ^bb0(%arg0: index):
      %23 = "affine.min"(%arg0, %18) <{map = #map2}> : (index, index) -> index
      %24 = "memref.subview"(%19, %arg0, %23) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: -9223372036854775808, 384>, static_strides = array<i64: 1, 1>}> : (memref<?x384xf32, strided<[384, 1], offset: ?>>, index, index) -> memref<?x384xf32, strided<[384, 1], offset: ?>>
      "scf.for"(%1, %5, %3) ({
      ^bb0(%arg1: index):
        "vector.transfer_write"(%7, %9, %1, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map3}> : (vector<8x32xf32>, memref<8x32xf32>, index, index) -> ()
        %25 = "memref.subview"(%9, %23) <{operandSegmentSizes = array<i32: 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 32>, static_strides = array<i64: 1, 1>}> : (memref<8x32xf32>, index) -> memref<?x32xf32, strided<[32, 1]>>
        %26 = "vector.transfer_read"(%25, %1, %1, %0) <{in_bounds = [false, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map3}> : (memref<?x32xf32, strided<[32, 1]>>, index, index, f32) -> vector<8x32xf32>
        %27 = "scf.for"(%1, %2, %6, %26) ({
        ^bb0(%arg2: index, %arg3: vector<8x32xf32>):
          %29 = "vector.transfer_read"(%24, %1, %arg2, %0) <{in_bounds = [false, false], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map3}> : (memref<?x384xf32, strided<[384, 1], offset: ?>>, index, index, f32) -> vector<8x16xf32>
          %30 = "vector.transfer_read"(%22, %arg2, %arg1, %0) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map3}> : (memref<384x128xf32, strided<[384, 1], offset: ?>>, index, index, f32) -> vector<16x32xf32>
          %31 = "vector.contract"(%29, %30, %arg3) <{indexing_maps = [#map4, #map5, #map6], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<8x16xf32>, vector<16x32xf32>, vector<8x32xf32>) -> vector<8x32xf32>
          "scf.yield"(%31) : (vector<8x32xf32>) -> ()
        }) : (index, index, index, vector<8x32xf32>) -> vector<8x32xf32>
        %28 = "memref.subview"(%20, %arg0, %arg1, %23) <{operandSegmentSizes = array<i32: 1, 2, 1, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, 32>, static_strides = array<i64: 1, 1>}> : (memref<?x128xf32, strided<[384, 1], offset: ?>>, index, index, index) -> memref<?x32xf32, strided<[384, 1], offset: ?>>
        "vector.transfer_write"(%27, %28, %1, %1) <{in_bounds = [false, true], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map3}> : (vector<8x32xf32>, memref<?x32xf32, strided<[384, 1], offset: ?>>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

