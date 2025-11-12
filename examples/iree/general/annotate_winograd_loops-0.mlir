#map = affine_map<()[s0] -> (s0 * 32)>
#map1 = affine_map<(d0) -> (d0 * 6)>
#map2 = affine_map<(d0) -> (d0 * -6 + 10, 8)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map4 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "_wino_input_dispatch_0"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1280 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = dense<1.000000e-01> : tensor<8x8xf32>}> : () -> tensor<8x8xf32>
    %4 = "arith.constant"() <{value = dense<1.000000e-01> : tensor<8x8xf32>}> : () -> tensor<8x8xf32>
    %5 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %6 = "arith.constant"() <{value = 1 : index}> : () -> index
    %7 = "arith.constant"() <{value = 32 : index}> : () -> index
    %8 = "tensor.empty"() : () -> tensor<8x8xf32>
    %9 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x10x10x1280xf32>>
    %10 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x8x2x2x2x1280xf32>>
    %11 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %12 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %13 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %14 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    "scf.for"(%13, %2, %14) ({
    ^bb0(%arg0: index):
      %15 = "affine.apply"(%11) <{map = #map}> : (index) -> index
      %16 = "affine.apply"(%12) <{map = #map}> : (index) -> index
      "scf.for"(%15, %1, %16) ({
      ^bb0(%arg1: index):
        %17 = "iree_tensor_ext.dispatch.tensor.load"(%10, %arg0, %arg1) <{operandSegmentSizes = array<i32: 1, 0, 2, 0, 0>, static_offsets = array<i64: 0, 0, -9223372036854775808, 0, 0, -9223372036854775808>, static_sizes = array<i64: 8, 8, 1, 2, 2, 32>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x8x2x2x2x1280xf32>>, index, index) -> tensor<8x8x1x2x2x32xf32>
        %18 = "iree_tensor_ext.dispatch.tensor.load"(%9, %arg0, %arg1) <{operandSegmentSizes = array<i32: 1, 0, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0, 0, -9223372036854775808>, static_sizes = array<i64: 1, 10, 10, 32>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x10x10x1280xf32>>, index, index) -> tensor<1x10x10x32xf32>
        %19 = "scf.for"(%0, %2, %6, %17) ({
        ^bb0(%arg2: index, %arg3: tensor<8x8x1x2x2x32xf32>):
          %20 = "affine.apply"(%arg2) <{map = #map1}> : (index) -> index
          %21 = "affine.min"(%arg2) <{map = #map2}> : (index) -> index
          %22 = "scf.for"(%0, %2, %6, %arg3) ({
          ^bb0(%arg4: index, %arg5: tensor<8x8x1x2x2x32xf32>):
            %23 = "affine.apply"(%arg4) <{map = #map1}> : (index) -> index
            %24 = "affine.min"(%arg4) <{map = #map2}> : (index) -> index
            %25 = "scf.for"(%0, %7, %6, %arg5) ({
            ^bb0(%arg6: index, %arg7: tensor<8x8x1x2x2x32xf32>):
              %26 = "tensor.extract_slice"(%18, %20, %23, %arg6, %21, %24) <{operandSegmentSizes = array<i32: 1, 3, 2, 0>, static_offsets = array<i64: 0, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808, -9223372036854775808, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x10x10x32xf32>, index, index, index, index, index) -> tensor<?x?xf32>
              %27 = "linalg.fill"(%5, %8) <{operandSegmentSizes = array<i32: 1, 1>}> ({
              ^bb0(%arg16: f32, %arg17: f32):
                "linalg.yield"(%arg16) : (f32) -> ()
              }) : (f32, tensor<8x8xf32>) -> tensor<8x8xf32>
              %28 = "tensor.insert_slice"(%26, %27, %21, %24) <{operandSegmentSizes = array<i32: 1, 1, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, tensor<8x8xf32>, index, index) -> tensor<8x8xf32>
              %29 = "tensor.extract_slice"(%arg7, %arg2, %arg4, %arg6) <{operandSegmentSizes = array<i32: 1, 3, 0, 0>, static_offsets = array<i64: 0, 0, 0, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 8, 8, 1, 1, 1, 1>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (tensor<8x8x1x2x2x32xf32>, index, index, index) -> tensor<8x8xf32>
              %30 = "linalg.fill"(%5, %29) <{operandSegmentSizes = array<i32: 1, 1>}> ({
              ^bb0(%arg14: f32, %arg15: f32):
                "linalg.yield"(%arg14) : (f32) -> ()
              }) : (f32, tensor<8x8xf32>) -> tensor<8x8xf32>
              %31 = "linalg.matmul"(%28, %4, %30) <{indexing_maps = [#map3, #map4, #map5], operandSegmentSizes = array<i32: 2, 1>}> ({
              ^bb0(%arg11: f32, %arg12: f32, %arg13: f32):
                %36 = "arith.mulf"(%arg11, %arg12) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
                %37 = "arith.addf"(%arg13, %36) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
                "linalg.yield"(%37) : (f32) -> ()
              }) : (tensor<8x8xf32>, tensor<8x8xf32>, tensor<8x8xf32>) -> tensor<8x8xf32>
              %32 = "linalg.matmul"(%3, %31, %30) <{indexing_maps = [#map3, #map4, #map5], operandSegmentSizes = array<i32: 2, 1>}> ({
              ^bb0(%arg8: f32, %arg9: f32, %arg10: f32):
                %34 = "arith.mulf"(%arg8, %arg9) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
                %35 = "arith.addf"(%arg10, %34) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
                "linalg.yield"(%35) : (f32) -> ()
              }) : (tensor<8x8xf32>, tensor<8x8xf32>, tensor<8x8xf32>) -> tensor<8x8xf32>
              %33 = "tensor.insert_slice"(%32, %arg7, %arg2, %arg4, %arg6) <{operandSegmentSizes = array<i32: 1, 1, 3, 0, 0>, static_offsets = array<i64: 0, 0, 0, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 8, 8, 1, 1, 1, 1>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (tensor<8x8xf32>, tensor<8x8x1x2x2x32xf32>, index, index, index) -> tensor<8x8x1x2x2x32xf32>
              "scf.yield"(%33) : (tensor<8x8x1x2x2x32xf32>) -> ()
            }) : (index, index, index, tensor<8x8x1x2x2x32xf32>) -> tensor<8x8x1x2x2x32xf32>
            "scf.yield"(%25) : (tensor<8x8x1x2x2x32xf32>) -> ()
          }) : (index, index, index, tensor<8x8x1x2x2x32xf32>) -> tensor<8x8x1x2x2x32xf32>
          "scf.yield"(%22) : (tensor<8x8x1x2x2x32xf32>) -> ()
        }) : (index, index, index, tensor<8x8x1x2x2x32xf32>) -> tensor<8x8x1x2x2x32xf32>
        "iree_tensor_ext.dispatch.tensor.store"(%19, %10, %arg0, %arg1) <{operandSegmentSizes = array<i32: 1, 1, 0, 2, 0, 0>, static_offsets = array<i64: 0, 0, -9223372036854775808, 0, 0, -9223372036854775808>, static_sizes = array<i64: 8, 8, 1, 2, 2, 32>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (tensor<8x8x1x2x2x32xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x8x2x2x2x1280xf32>>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

