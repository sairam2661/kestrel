#map = affine_map<()[s0] -> (s0 * 32)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "cast_follwed_by_store"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "arith.constant"() <{value = 64 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 32 : index}> : () -> index
    %5 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x32x1024xf32>>
    %6 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x1024x64xf32>>
    %7 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x32x64xf32>>
    %8 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %9 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %10 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %11 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    %12 = "hal.interface.workgroup.id"() <{dimension = 2 : index}> : () -> index
    %13 = "hal.interface.workgroup.count"() <{dimension = 2 : index}> : () -> index
    "scf.for"(%12, %1, %13) ({
    ^bb0(%arg0: index):
      %14 = "affine.apply"(%10) <{map = #map}> : (index) -> index
      %15 = "affine.apply"(%11) <{map = #map}> : (index) -> index
      "scf.for"(%14, %4, %15) ({
      ^bb0(%arg1: index):
        %16 = "affine.apply"(%8) <{map = #map}> : (index) -> index
        %17 = "affine.apply"(%9) <{map = #map}> : (index) -> index
        "scf.for"(%16, %2, %17) ({
        ^bb0(%arg2: index):
          %18 = "iree_tensor_ext.dispatch.tensor.load"(%7, %arg0, %arg1, %arg2) <{operandSegmentSizes = array<i32: 1, 0, 3, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 32, 32>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x32x64xf32>>, index, index, index) -> tensor<1x32x32xf32>
          %19 = "iree_tensor_ext.dispatch.tensor.load"(%5, %arg0, %arg1) <{operandSegmentSizes = array<i32: 1, 0, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, 0>, static_sizes = array<i64: 1, 32, 1024>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4x32x1024xf32>>, index, index) -> tensor<1x32x1024xf32>
          %20 = "iree_tensor_ext.dispatch.tensor.load"(%6, %arg0, %arg2) <{operandSegmentSizes = array<i32: 1, 0, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0, -9223372036854775808>, static_sizes = array<i64: 1, 1024, 32>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4x1024x64xf32>>, index, index) -> tensor<1x1024x32xf32>
          %21 = "linalg.fill"(%0, %18) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg6: f32, %arg7: f32):
            "linalg.yield"(%arg6) : (f32) -> ()
          }) : (f32, tensor<1x32x32xf32>) -> tensor<1x32x32xf32>
          %22 = "linalg.batch_matmul"(%19, %20, %21) <{indexing_maps = [#map1, #map2, #map3], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
            %23 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %24 = "arith.addf"(%arg5, %23) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%24) : (f32) -> ()
          }) : (tensor<1x32x1024xf32>, tensor<1x1024x32xf32>, tensor<1x32x32xf32>) -> tensor<1x32x32xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%22, %7, %arg0, %arg1, %arg2) <{operandSegmentSizes = array<i32: 1, 1, 0, 3, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 32, 32>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x32x32xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x32x64xf32>>, index, index, index) -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

