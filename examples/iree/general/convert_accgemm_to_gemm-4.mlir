#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<512x128xi8>, tensor<512x128xi8>) -> (), sym_name = "nonacc_gemm"}> ({
  ^bb0(%arg0: tensor<512x128xi8>, %arg1: tensor<512x128xi8>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<512x512xi32>>
    %3 = "tensor.empty"() : () -> tensor<512x512xi32>
    %4 = "linalg.fill"(%0, %3) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: i32, %arg6: i32):
      "linalg.yield"(%arg5) : (i32) -> ()
    }) : (i32, tensor<512x512xi32>) -> tensor<512x512xi32>
    %5 = "linalg.matmul"(%arg0, %arg1, %4) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg2: i8, %arg3: i8, %arg4: i32):
      %6 = "arith.extsi"(%arg2) : (i8) -> i32
      %7 = "arith.extsi"(%arg3) : (i8) -> i32
      %8 = "arith.muli"(%6, %7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %9 = "arith.addi"(%arg4, %8) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%9) : (i32) -> ()
    }) : (tensor<512x128xi8>, tensor<512x128xi8>, tensor<512x512xi32>) -> tensor<512x512xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%5, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 512, 512>, static_strides = array<i64: 1, 1>}> : (tensor<512x512xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<512x512xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

