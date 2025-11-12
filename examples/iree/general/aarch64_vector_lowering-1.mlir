#map = affine_map<()[s0] -> (s0 * 64)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map5 = affine_map<(d0, d1, d2) -> (d0 + d1 + d2)>
#map6 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "matmul_gather"}> ({
    %0 = "arith.constant"() <{value = dense<0.000000e+00> : vector<32x32xf32>}> : () -> vector<32x32xf32>
    %1 = "arith.constant"() <{value = 32 : index}> : () -> index
    %2 = "arith.constant"() <{value = 512 : index}> : () -> index
    %3 = "arith.constant"() <{value = 384 : index}> : () -> index
    %4 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %5 = "arith.constant"() <{value = 1.000000e-01 : f32}> : () -> f32
    %6 = "arith.constant"() <{value = 4.000000e-01 : f32}> : () -> f32
    %7 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %8 = "arith.constant"() <{value = 1835008 : index}> : () -> index
    %9 = "arith.constant"() <{value = 0 : index}> : () -> index
    %10 = "arith.constant"() <{value = 64 : index}> : () -> index
    %11 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<384xi32>>
    %12 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<384x512xf32>>
    %13 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<384x384xf32>>
    %14 = "hal.interface.binding.subspan"() <{binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<384x512xf32>>
    %15 = "hal.interface.binding.subspan"(%8) <{binding = 4 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x512xf32>>
    %16 = "hal.interface.binding.subspan"() <{binding = 5 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<384x512xf32>>
    %17 = "iree_tensor_ext.dispatch.tensor.load"(%15) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2, 512>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x512xf32>>) -> tensor<2x512xf32>
    %18 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %19 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %20 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %21 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    %22 = "affine.apply"(%20) <{map = #map}> : (index) -> index
    %23 = "affine.apply"(%21) <{map = #map}> : (index) -> index
    %24 = "affine.apply"(%18) <{map = #map}> : (index) -> index
    %25 = "affine.apply"(%19) <{map = #map}> : (index) -> index
    %26 = "tensor.empty"() : () -> tensor<64x64xf32>
    %27 = "tensor.empty"() : () -> tensor<32x32xf32>
    "scf.for"(%22, %3, %23) ({
    ^bb0(%arg0: index):
      %28 = "iree_tensor_ext.dispatch.tensor.load"(%11, %arg0) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 64>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<384xi32>>, index) -> tensor<64xi32>
      %29 = "iree_tensor_ext.dispatch.tensor.load"(%13, %arg0) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: 64, 384>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<384x384xf32>>, index) -> tensor<64x384xf32>
      "scf.for"(%24, %2, %25) ({
      ^bb0(%arg1: index):
        %30 = "iree_tensor_ext.dispatch.tensor.load"(%12, %arg0, %arg1) <{operandSegmentSizes = array<i32: 1, 0, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 64, 64>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<384x512xf32>>, index, index) -> tensor<64x64xf32>
        %31 = "iree_tensor_ext.dispatch.tensor.load"(%14, %arg1) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 384, 64>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<384x512xf32>>, index) -> tensor<384x64xf32>
        %32 = "scf.for"(%9, %10, %1, %26) ({
        ^bb0(%arg2: index, %arg3: tensor<64x64xf32>):
          %33 = "tensor.extract_slice"(%28, %arg2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 32>, static_strides = array<i64: 1>}> : (tensor<64xi32>, index) -> tensor<32xi32>
          %34 = "scf.for"(%9, %10, %1, %arg3) ({
          ^bb0(%arg4: index, %arg5: tensor<64x64xf32>):
            %35 = "scf.for"(%9, %3, %1, %0) ({
            ^bb0(%arg10: index, %arg11: vector<32x32xf32>):
              %50 = "vector.transfer_read"(%29, %arg2, %arg10, %4) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map1}> : (tensor<64x384xf32>, index, index, f32) -> vector<32x32xf32>
              %51 = "vector.transfer_read"(%31, %arg10, %arg4, %4) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map1}> : (tensor<384x64xf32>, index, index, f32) -> vector<32x32xf32>
              %52 = "vector.contract"(%50, %51, %arg11) <{indexing_maps = [#map2, #map3, #map4], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<32x32xf32>, vector<32x32xf32>, vector<32x32xf32>) -> vector<32x32xf32>
              "scf.yield"(%52) : (vector<32x32xf32>) -> ()
            }) : (index, index, index, vector<32x32xf32>) -> vector<32x32xf32>
            %36 = "vector.transfer_write"(%35, %27, %9, %9) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map1}> : (vector<32x32xf32>, tensor<32x32xf32>, index, index) -> tensor<32x32xf32>
            %37 = "tensor.extract_slice"(%30, %arg2, %arg4) <{operandSegmentSizes = array<i32: 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 32, 32>, static_strides = array<i64: 1, 1>}> : (tensor<64x64xf32>, index, index) -> tensor<32x32xf32>
            %38 = "tensor.extract_slice"(%arg5, %arg2, %arg4) <{operandSegmentSizes = array<i32: 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 32, 32>, static_strides = array<i64: 1, 1>}> : (tensor<64x64xf32>, index, index) -> tensor<32x32xf32>
            %39 = "linalg.generic"(%36, %33, %37, %38) <{indexing_maps = [#map1, #map6, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
            ^bb0(%arg6: f32, %arg7: i32, %arg8: f32, %arg9: f32):
              %41 = "linalg.index"() <{dim = 1 : i64}> : () -> index
              %42 = "affine.apply"(%arg1, %41, %arg4) <{map = #map5}> : (index, index, index) -> index
              %43 = "arith.index_cast"(%arg7) : (i32) -> index
              %44 = "tensor.extract"(%17, %43, %42) : (tensor<2x512xf32>, index, index) -> f32
              %45 = "arith.addf"(%arg6, %5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
              %46 = "arith.addf"(%45, %44) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
              %47 = "arith.addf"(%46, %arg8) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
              %48 = "arith.mulf"(%47, %6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
              %49 = "arith.addf"(%48, %7) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
              "linalg.yield"(%49) : (f32) -> ()
            }) : (tensor<32x32xf32>, tensor<32xi32>, tensor<32x32xf32>, tensor<32x32xf32>) -> tensor<32x32xf32>
            %40 = "tensor.insert_slice"(%39, %arg5, %arg2, %arg4) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 32, 32>, static_strides = array<i64: 1, 1>}> : (tensor<32x32xf32>, tensor<64x64xf32>, index, index) -> tensor<64x64xf32>
            "scf.yield"(%40) : (tensor<64x64xf32>) -> ()
          }) : (index, index, index, tensor<64x64xf32>) -> tensor<64x64xf32>
          "scf.yield"(%34) : (tensor<64x64xf32>) -> ()
        }) : (index, index, index, tensor<64x64xf32>) -> tensor<64x64xf32>
        "iree_tensor_ext.dispatch.tensor.store"(%32, %16, %arg0, %arg1) <{operandSegmentSizes = array<i32: 1, 1, 0, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 64, 64>, static_strides = array<i64: 1, 1>}> : (tensor<64x64xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<384x512xf32>>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

