#map = affine_map<()[s0] -> (s0 * 4)>
#map1 = affine_map<(d0) -> (4, -d0 + 10)>
#map2 = affine_map<(d0, d1) -> (4, -d0 + d1)>
#map3 = affine_map<(d0, d1) -> (d0 + d1)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "elementwise"}> ({
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = dense_resource<__elided__> : tensor<1x10xf32>}> : () -> tensor<1x10xf32>
    %3 = "arith.constant"() <{value = 512 : index}> : () -> index
    %4 = "arith.constant"() <{value = 64 : index}> : () -> index
    %5 = "arith.constant"() <{value = 10 : index}> : () -> index
    %6 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x10xf32>>
    %7 = "hal.interface.binding.subspan"(%4) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x10xf32>>
    %8 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %9 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %10 = "affine.apply"(%8) <{map = #map}> : (index) -> index
    %11 = "affine.apply"(%9) <{map = #map}> : (index) -> index
    "scf.for"(%10, %5, %11) ({
    ^bb0(%arg0: index):
      %12 = "affine.min"(%arg0) <{map = #map1}> : (index) -> index
      %13 = "iree_tensor_ext.dispatch.tensor.load"(%6, %arg0, %12) <{operandSegmentSizes = array<i32: 1, 0, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x10xf32>>, index, index) -> tensor<1x?xf32>
      %14 = "iree_tensor_ext.dispatch.tensor.load"(%7, %arg0, %12) <{operandSegmentSizes = array<i32: 1, 0, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x10xf32>>, index, index) -> tensor<1x?xf32>
      %15 = "scf.for"(%1, %12, %0, %14) ({
      ^bb0(%arg1: index, %arg2: tensor<1x?xf32>):
        %16 = "affine.min"(%arg1, %12) <{map = #map2}> : (index, index) -> index
        %17 = "tensor.extract_slice"(%13, %arg1, %16) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<1x?xf32>, index, index) -> tensor<1x?xf32>
        %18 = "affine.apply"(%arg1, %arg0) <{map = #map3}> : (index, index) -> index
        %19 = "tensor.extract_slice"(%2, %18, %16) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<1x10xf32>, index, index) -> tensor<1x?xf32>
        %20 = "tensor.extract_slice"(%arg2, %arg1, %16) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<1x?xf32>, index, index) -> tensor<1x?xf32>
        %21 = "linalg.generic"(%17, %19, %20) <{indexing_maps = [#map4, #map4, #map4], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
        ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
          %23 = "arith.addf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%23) : (f32) -> ()
        }) : (tensor<1x?xf32>, tensor<1x?xf32>, tensor<1x?xf32>) -> tensor<1x?xf32>
        %22 = "tensor.insert_slice"(%21, %arg2, %arg1, %16) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<1x?xf32>, tensor<1x?xf32>, index, index) -> tensor<1x?xf32>
        "scf.yield"(%22) : (tensor<1x?xf32>) -> ()
      }) : (index, index, index, tensor<1x?xf32>) -> tensor<1x?xf32>
      "iree_tensor_ext.dispatch.tensor.store"(%15, %7, %arg0, %12) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<1x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x10xf32>>, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

