#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<512x128xi8>, tensor<512x128xi8>) -> (), sym_name = "accumulate_gemm"}> ({
  ^bb0(%arg0: tensor<512x128xi8>, %arg1: tensor<512x128xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<512x512xi32>>
    %2 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 512, 512>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<512x512xi32>>) -> tensor<512x512xi32>
    %3 = "linalg.generic"(%arg0, %arg1, %2) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg2: i8, %arg3: i8, %arg4: i32):
      %4 = "arith.extsi"(%arg2) : (i8) -> i32
      %5 = "arith.extsi"(%arg3) : (i8) -> i32
      %6 = "arith.muli"(%4, %5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %7 = "arith.addi"(%arg4, %6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%7) : (i32) -> ()
    }) : (tensor<512x128xi8>, tensor<512x128xi8>, tensor<512x512xi32>) -> tensor<512x512xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%3, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 512, 512>, static_strides = array<i64: 1, 1>}> : (tensor<512x512xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<512x512xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

