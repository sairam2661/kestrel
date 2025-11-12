#map = affine_map<()[s0] -> (s0 * 64)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dot_384x512x128_dispatch_0"}> ({
    %0 = "arith.constant"() <{value = dense<0.000000e+00> : vector<16x16xf32>}> : () -> vector<16x16xf32>
    %1 = "arith.constant"() <{value = 32 : index}> : () -> index
    %2 = "arith.constant"() <{value = 512 : index}> : () -> index
    %3 = "arith.constant"() <{value = 16 : index}> : () -> index
    %4 = "arith.constant"() <{value = 64 : index}> : () -> index
    %5 = "arith.constant"() <{value = 0 : index}> : () -> index
    %6 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %7 = "arith.constant"() <{value = 384 : index}> : () -> index
    %8 = "arith.constant"() <{value = 128 : index}> : () -> index
    %9 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<384x512xf32>>
    %10 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x128xf32>>
    %11 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<384x128xf32>>
    %12 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %13 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %14 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %15 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    %16 = "affine.apply"(%14) <{map = #map}> : (index) -> index
    %17 = "affine.apply"(%15) <{map = #map}> : (index) -> index
    %18 = "affine.apply"(%12) <{map = #map}> : (index) -> index
    %19 = "affine.apply"(%13) <{map = #map}> : (index) -> index
    %20 = "tensor.empty"() : () -> tensor<64x64xf32>
    "scf.for"(%16, %7, %17) ({
    ^bb0(%arg0: index):
      %21 = "iree_tensor_ext.dispatch.tensor.load"(%9, %arg0) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: 64, 512>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<384x512xf32>>, index) -> tensor<64x512xf32>
      "scf.for"(%18, %8, %19) ({
      ^bb0(%arg1: index):
        %22 = "iree_tensor_ext.dispatch.tensor.load"(%10, %arg1) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 512, 64>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<512x128xf32>>, index) -> tensor<512x64xf32>
        %23 = "scf.for"(%5, %4, %3, %20) ({
        ^bb0(%arg2: index, %arg3: tensor<64x64xf32>):
          %24 = "scf.for"(%5, %4, %3, %arg3) ({
          ^bb0(%arg4: index, %arg5: tensor<64x64xf32>):
            %25 = "scf.for"(%5, %2, %1, %0) ({
            ^bb0(%arg6: index, %arg7: vector<16x16xf32>):
              %28 = "vector.transfer_read"(%21, %arg2, %arg6, %6) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map1}> : (tensor<64x512xf32>, index, index, f32) -> vector<16x32xf32>
              %29 = "vector.transfer_read"(%22, %arg6, %arg4, %6) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map1}> : (tensor<512x64xf32>, index, index, f32) -> vector<32x16xf32>
              %30 = "vector.contract"(%28, %29, %arg7) <{indexing_maps = [#map2, #map3, #map4], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<16x32xf32>, vector<32x16xf32>, vector<16x16xf32>) -> vector<16x16xf32>
              "scf.yield"(%30) : (vector<16x16xf32>) -> ()
            }) : (index, index, index, vector<16x16xf32>) -> vector<16x16xf32>
            %26 = "math.exp"(%25) <{fastmath = #arith.fastmath<none>}> : (vector<16x16xf32>) -> vector<16x16xf32>
            %27 = "vector.transfer_write"(%26, %arg5, %arg2, %arg4) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map1}> : (vector<16x16xf32>, tensor<64x64xf32>, index, index) -> tensor<64x64xf32>
            "scf.yield"(%27) : (tensor<64x64xf32>) -> ()
          }) : (index, index, index, tensor<64x64xf32>) -> tensor<64x64xf32>
          "scf.yield"(%24) : (tensor<64x64xf32>) -> ()
        }) : (index, index, index, tensor<64x64xf32>) -> tensor<64x64xf32>
        "iree_tensor_ext.dispatch.tensor.store"(%23, %11, %arg0, %arg1) <{operandSegmentSizes = array<i32: 1, 1, 0, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 64, 64>, static_strides = array<i64: 1, 1>}> : (tensor<64x64xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<384x128xf32>>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

