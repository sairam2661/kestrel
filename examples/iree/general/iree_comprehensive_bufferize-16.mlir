#map = affine_map<(d0)[s0] -> (-d0 + 1, s0)>
#map1 = affine_map<(d0)[s0] -> (-d0 + 3, s0)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dot_general_lowering"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x1x2xf32>>
    %4 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x3xf32>>
    %5 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x3xf32>>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, 1, 2>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x1x2xf32>>) -> tensor<1x1x2xf32>
    %7 = "tensor.collapse_shape"(%6) <{reassociation = [[0, 1], [2]]}> : (tensor<1x1x2xf32>) -> tensor<1x2xf32>
    %8 = "hal.interface.workgroup.size"() <{dimension = 0 : index}> : () -> index
    %9 = "hal.interface.workgroup.size"() <{dimension = 1 : index}> : () -> index
    %10 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %11 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %12 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %13 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    %14 = "arith.muli"(%9, %12) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %15 = "arith.muli"(%9, %13) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "scf.for"(%14, %2, %15) ({
    ^bb0(%arg0: index):
      %16 = "arith.muli"(%8, %10) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      %17 = "arith.muli"(%8, %11) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "scf.for"(%16, %1, %17) ({
      ^bb0(%arg1: index):
        %18 = "affine.min"(%arg0, %9) <{map = #map}> : (index, index) -> index
        %19 = "affine.min"(%arg1, %8) <{map = #map1}> : (index, index) -> index
        %20 = "iree_tensor_ext.dispatch.tensor.load"(%5, %arg0, %arg1, %18, %19) <{operandSegmentSizes = array<i32: 1, 0, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x3xf32>>, index, index, index, index) -> tensor<?x?xf32>
        %21 = "tensor.extract_slice"(%7, %arg0, %18) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: -9223372036854775808, 2>, static_strides = array<i64: 1, 1>}> : (tensor<1x2xf32>, index, index) -> tensor<?x2xf32>
        %22 = "iree_tensor_ext.dispatch.tensor.load"(%4, %arg1, %19) <{operandSegmentSizes = array<i32: 1, 0, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 2, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x3xf32>>, index, index) -> tensor<2x?xf32>
        %23 = "linalg.fill"(%0, %20) <{operandSegmentSizes = array<i32: 1, 1>}> ({
        ^bb0(%arg5: f32, %arg6: f32):
          "linalg.yield"(%arg5) : (f32) -> ()
        }) : (f32, tensor<?x?xf32>) -> tensor<?x?xf32>
        %24 = "linalg.matmul"(%21, %22, %23) <{indexing_maps = [#map2, #map3, #map4], operandSegmentSizes = array<i32: 2, 1>}> ({
        ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
          %25 = "arith.mulf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          %26 = "arith.addf"(%arg4, %25) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%26) : (f32) -> ()
        }) : (tensor<?x2xf32>, tensor<2x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
        "iree_tensor_ext.dispatch.tensor.store"(%24, %5, %arg0, %arg1, %18, %19, %2, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 2, 2, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x3xf32>>, index, index, index, index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

