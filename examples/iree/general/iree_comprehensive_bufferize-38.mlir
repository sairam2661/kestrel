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
  "func.func"() <{function_type = () -> (), sym_name = "l1_tiled_matmul_no_fill_readwrite"}> ({
    %0 = "arith.constant"() <{value = 32 : index}> : () -> index
    %1 = "arith.constant"() <{value = 24 : index}> : () -> index
    %2 = "arith.constant"() <{value = 144 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "arith.constant"() <{value = 250 : index}> : () -> index
    %6 = "arith.constant"() <{value = 370 : index}> : () -> index
    %7 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<250x144xf32>>
    %8 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<144x370xf32>>
    %9 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<250x370xf32>>
    %10 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %11 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %12 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %13 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    %14 = "affine.apply"(%12) <{map = #map}> : (index) -> index
    %15 = "affine.apply"(%13) <{map = #map}> : (index) -> index
    "scf.for"(%14, %5, %15) ({
    ^bb0(%arg0: index):
      %16 = "affine.apply"(%10) <{map = #map}> : (index) -> index
      %17 = "affine.apply"(%11) <{map = #map}> : (index) -> index
      "scf.for"(%16, %6, %17) ({
      ^bb0(%arg1: index):
        %18 = "affine.min"(%arg0) <{map = #map1}> : (index) -> index
        %19 = "iree_tensor_ext.dispatch.tensor.load"(%7, %arg0, %18) <{operandSegmentSizes = array<i32: 1, 0, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: -9223372036854775808, 144>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<250x144xf32>>, index, index) -> tensor<?x144xf32>
        %20 = "affine.min"(%arg1) <{map = #map2}> : (index) -> index
        %21 = "iree_tensor_ext.dispatch.tensor.load"(%8, %arg1, %20) <{operandSegmentSizes = array<i32: 1, 0, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 144, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<144x370xf32>>, index, index) -> tensor<144x?xf32>
        %22 = "iree_tensor_ext.dispatch.tensor.load"(%9, %arg0, %arg1, %18, %20) <{operandSegmentSizes = array<i32: 1, 0, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<250x370xf32>>, index, index, index, index) -> tensor<?x?xf32>
        %23 = "scf.for"(%3, %5, %0, %22) ({
        ^bb0(%arg2: index, %arg3: tensor<?x?xf32>):
          %24 = "scf.for"(%3, %6, %0, %arg3) ({
          ^bb0(%arg4: index, %arg5: tensor<?x?xf32>):
            %25 = "scf.for"(%3, %2, %1, %arg5) ({
            ^bb0(%arg6: index, %arg7: tensor<?x?xf32>):
              %26 = "affine.min"(%arg2) <{map = #map3}> : (index) -> index
              %27 = "affine.min"(%arg6) <{map = #map4}> : (index) -> index
              %28 = "tensor.extract_slice"(%19, %arg2, %arg6, %26, %27) <{operandSegmentSizes = array<i32: 1, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x144xf32>, index, index, index, index) -> tensor<?x?xf32>
              %29 = "affine.min"(%arg4) <{map = #map5}> : (index) -> index
              %30 = "tensor.extract_slice"(%21, %arg6, %arg4, %27, %29) <{operandSegmentSizes = array<i32: 1, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<144x?xf32>, index, index, index, index) -> tensor<?x?xf32>
              %31 = "tensor.dim"(%arg7, %3) : (tensor<?x?xf32>, index) -> index
              %32 = "affine.min"(%31, %arg2) <{map = #map6}> : (index, index) -> index
              %33 = "tensor.dim"(%arg7, %4) : (tensor<?x?xf32>, index) -> index
              %34 = "affine.min"(%33, %arg4) <{map = #map6}> : (index, index) -> index
              %35 = "tensor.extract_slice"(%arg7, %arg2, %arg4, %32, %34) <{operandSegmentSizes = array<i32: 1, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, index, index, index, index) -> tensor<?x?xf32>
              %36 = "linalg.matmul"(%28, %30, %35) <{indexing_maps = [#map7, #map8, #map9], operandSegmentSizes = array<i32: 2, 1>}> ({
              ^bb0(%arg8: f32, %arg9: f32, %arg10: f32):
                %38 = "arith.mulf"(%arg8, %arg9) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
                %39 = "arith.addf"(%arg10, %38) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
                "linalg.yield"(%39) : (f32) -> ()
              }) : (tensor<?x?xf32>, tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
              %37 = "tensor.insert_slice"(%36, %arg7, %arg2, %arg4, %32, %34) <{operandSegmentSizes = array<i32: 1, 1, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, tensor<?x?xf32>, index, index, index, index) -> tensor<?x?xf32>
              "scf.yield"(%37) : (tensor<?x?xf32>) -> ()
            }) : (index, index, index, tensor<?x?xf32>) -> tensor<?x?xf32>
            "scf.yield"(%25) : (tensor<?x?xf32>) -> ()
          }) : (index, index, index, tensor<?x?xf32>) -> tensor<?x?xf32>
          "scf.yield"(%24) : (tensor<?x?xf32>) -> ()
        }) : (index, index, index, tensor<?x?xf32>) -> tensor<?x?xf32>
        "iree_tensor_ext.dispatch.tensor.store"(%23, %9, %arg0, %arg1, %18, %20) <{operandSegmentSizes = array<i32: 1, 1, 0, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<250x370xf32>>, index, index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

