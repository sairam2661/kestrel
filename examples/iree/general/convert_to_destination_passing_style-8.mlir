#map = affine_map<()[s0] -> (s0 * 32)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "cast_followed_by_store"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "arith.constant"() <{value = 64 : index}> : () -> index
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "arith.constant"() <{value = 32 : index}> : () -> index
    %6 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x32x1024xf32>>
    %7 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x1024x64xf32>>
    %8 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x32x64xf32>>
    %9 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %10 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %11 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %12 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    %13 = "hal.interface.workgroup.id"() <{dimension = 2 : index}> : () -> index
    %14 = "hal.interface.workgroup.count"() <{dimension = 2 : index}> : () -> index
    "scf.for"(%13, %2, %14) ({
    ^bb0(%arg0: index):
      %15 = "affine.apply"(%11) <{map = #map}> : (index) -> index
      %16 = "affine.apply"(%12) <{map = #map}> : (index) -> index
      "scf.for"(%15, %5, %16) ({
      ^bb0(%arg1: index):
        %17 = "affine.apply"(%9) <{map = #map}> : (index) -> index
        %18 = "affine.apply"(%10) <{map = #map}> : (index) -> index
        "scf.for"(%17, %3, %18) ({
        ^bb0(%arg2: index):
          %19 = "iree_tensor_ext.dispatch.tensor.load"(%6, %arg0, %arg1, %4, %5) <{operandSegmentSizes = array<i32: 1, 0, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, 1024>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4x32x1024xf32>>, index, index, index, index) -> tensor<?x?x1024xf32>
          %20 = "iree_tensor_ext.dispatch.tensor.load"(%7, %arg0, %arg2, %4, %5) <{operandSegmentSizes = array<i32: 1, 0, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, 0, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, 1024, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4x1024x64xf32>>, index, index, index, index) -> tensor<?x1024x?xf32>
          %21 = "tensor.empty"() : () -> tensor<1x32x32xf32>
          %22 = "linalg.fill"(%1, %21) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg6: f32, %arg7: f32):
            "linalg.yield"(%arg6) : (f32) -> ()
          }) : (f32, tensor<1x32x32xf32>) -> tensor<1x32x32xf32>
          %23 = "linalg.batch_matmul"(%19, %20, %22) <{indexing_maps = [#map1, #map2, #map3], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
            %25 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %26 = "arith.addf"(%arg5, %25) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%26) : (f32) -> ()
          }) : (tensor<?x?x1024xf32>, tensor<?x1024x?xf32>, tensor<1x32x32xf32>) -> tensor<1x32x32xf32>
          %24 = "tensor.cast"(%23) : (tensor<1x32x32xf32>) -> tensor<?x?x?xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%24, %8, %arg0, %arg1, %arg2, %4, %5, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 3, 3, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x32x64xf32>>, index, index, index, index, index, index) -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

