#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "matmul_1024x2048x512xi8"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2048 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1024 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x512xi8>>
    %5 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x2048xi8>>
    %6 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1024x2048xi32>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1024, 512>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x512xi8>>) -> tensor<1024x512xi8>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 512, 2048>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<512x2048xi8>>) -> tensor<512x2048xi8>
    %9 = "tensor.empty"() : () -> tensor<1024x2048xi32>
    %10 = "linalg.fill"(%3, %9) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: i32, %arg4: i32):
      "linalg.yield"(%arg3) : (i32) -> ()
    }) : (i32, tensor<1024x2048xi32>) -> tensor<1024x2048xi32>
    %11 = "linalg.matmul"(%7, %8, %10) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: i8, %arg1: i8, %arg2: i32):
      %12 = "arith.extsi"(%arg0) : (i8) -> i32
      %13 = "arith.extsi"(%arg1) : (i8) -> i32
      %14 = "arith.muli"(%12, %13) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %15 = "arith.addi"(%arg2, %14) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%15) : (i32) -> ()
    }) : (tensor<1024x512xi8>, tensor<512x2048xi8>, tensor<1024x2048xi32>) -> tensor<1024x2048xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%11, %6) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1024, 2048>, static_strides = array<i64: 1, 1>}> : (tensor<1024x2048xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1024x2048xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

