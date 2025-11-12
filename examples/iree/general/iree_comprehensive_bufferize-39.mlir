#map = affine_map<()[s0] -> (s0 * 64)>
#map1 = affine_map<(d0) -> (-d0 + 250, 64)>
#map2 = affine_map<(d0) -> (-d0 + 370, 64)>
#map3 = affine_map<(d0) -> (-d0 + 250, 32)>
#map4 = affine_map<(d0) -> (-d0 + 144, 24)>
#map5 = affine_map<(d0) -> (-d0 + 370, 32)>
#map6 = affine_map<(d0, d1) -> (32, d0 - d1)>
#map7 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map8 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map9 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "l1_tiled_matmul"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 32 : index}> : () -> index
    %2 = "arith.constant"() <{value = 24 : index}> : () -> index
    %3 = "arith.constant"() <{value = 144 : index}> : () -> index
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    %5 = "arith.constant"() <{value = 1 : index}> : () -> index
    %6 = "arith.constant"() <{value = 250 : index}> : () -> index
    %7 = "arith.constant"() <{value = 370 : index}> : () -> index
    %8 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<250x144xf32>>
    %9 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<144x370xf32>>
    %10 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<250x370xf32>>
    %11 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %12 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %13 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %14 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    %15 = "affine.apply"(%13) <{map = #map}> : (index) -> index
    %16 = "affine.apply"(%14) <{map = #map}> : (index) -> index
    "scf.for"(%15, %6, %16) ({
    ^bb0(%arg0: index):
      %17 = "affine.apply"(%11) <{map = #map}> : (index) -> index
      %18 = "affine.apply"(%12) <{map = #map}> : (index) -> index
      "scf.for"(%17, %7, %18) ({
      ^bb0(%arg1: index):
        %19 = "affine.min"(%arg0) <{map = #map1}> : (index) -> index
        %20 = "affine.min"(%arg1) <{map = #map2}> : (index) -> index
        %21 = "iree_tensor_ext.dispatch.tensor.load"(%10, %arg0, %arg1, %19, %20) <{operandSegmentSizes = array<i32: 1, 0, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<250x370xf32>>, index, index, index, index) -> tensor<?x?xf32>
        %22 = "iree_tensor_ext.dispatch.tensor.load"(%8, %arg0, %19) <{operandSegmentSizes = array<i32: 1, 0, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: -9223372036854775808, 144>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<250x144xf32>>, index, index) -> tensor<?x144xf32>
        %23 = "iree_tensor_ext.dispatch.tensor.load"(%9, %arg1, %20) <{operandSegmentSizes = array<i32: 1, 0, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 144, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<144x370xf32>>, index, index) -> tensor<144x?xf32>
        %24 = "linalg.fill"(%0, %21) <{operandSegmentSizes = array<i32: 1, 1>}> ({
        ^bb0(%arg11: f32, %arg12: f32):
          "linalg.yield"(%arg11) : (f32) -> ()
        }) : (f32, tensor<?x?xf32>) -> tensor<?x?xf32>
        %25 = "scf.for"(%4, %6, %1, %24) ({
        ^bb0(%arg2: index, %arg3: tensor<?x?xf32>):
          %26 = "scf.for"(%4, %7, %1, %arg3) ({
          ^bb0(%arg4: index, %arg5: tensor<?x?xf32>):
            %27 = "scf.for"(%4, %3, %2, %arg5) ({
            ^bb0(%arg6: index, %arg7: tensor<?x?xf32>):
              %28 = "affine.min"(%arg2) <{map = #map3}> : (index) -> index
              %29 = "affine.min"(%arg6) <{map = #map4}> : (index) -> index
              %30 = "tensor.extract_slice"(%22, %arg2, %arg6, %28, %29) <{operandSegmentSizes = array<i32: 1, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x144xf32>, index, index, index, index) -> tensor<?x?xf32>
              %31 = "affine.min"(%arg4) <{map = #map5}> : (index) -> index
              %32 = "tensor.extract_slice"(%23, %arg6, %arg4, %29, %31) <{operandSegmentSizes = array<i32: 1, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<144x?xf32>, index, index, index, index) -> tensor<?x?xf32>
              %33 = "tensor.dim"(%arg7, %4) : (tensor<?x?xf32>, index) -> index
              %34 = "affine.min"(%33, %arg2) <{map = #map6}> : (index, index) -> index
              %35 = "tensor.dim"(%arg7, %5) : (tensor<?x?xf32>, index) -> index
              %36 = "affine.min"(%35, %arg4) <{map = #map6}> : (index, index) -> index
              %37 = "tensor.extract_slice"(%arg7, %arg2, %arg4, %34, %36) <{operandSegmentSizes = array<i32: 1, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, index, index, index, index) -> tensor<?x?xf32>
              %38 = "linalg.matmul"(%30, %32, %37) <{indexing_maps = [#map7, #map8, #map9], operandSegmentSizes = array<i32: 2, 1>}> ({
              ^bb0(%arg8: f32, %arg9: f32, %arg10: f32):
                %40 = "arith.mulf"(%arg8, %arg9) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
                %41 = "arith.addf"(%arg10, %40) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
                "linalg.yield"(%41) : (f32) -> ()
              }) : (tensor<?x?xf32>, tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
              %39 = "tensor.insert_slice"(%38, %arg7, %arg2, %arg4, %34, %36) <{operandSegmentSizes = array<i32: 1, 1, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, tensor<?x?xf32>, index, index, index, index) -> tensor<?x?xf32>
              "scf.yield"(%39) : (tensor<?x?xf32>) -> ()
            }) : (index, index, index, tensor<?x?xf32>) -> tensor<?x?xf32>
            "scf.yield"(%27) : (tensor<?x?xf32>) -> ()
          }) : (index, index, index, tensor<?x?xf32>) -> tensor<?x?xf32>
          "scf.yield"(%26) : (tensor<?x?xf32>) -> ()
        }) : (index, index, index, tensor<?x?xf32>) -> tensor<?x?xf32>
        "iree_tensor_ext.dispatch.tensor.store"(%25, %10, %arg0, %arg1, %19, %20) <{operandSegmentSizes = array<i32: 1, 1, 0, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<250x370xf32>>, index, index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

