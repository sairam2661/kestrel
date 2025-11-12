#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d1)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "fusion_quant_matmul_generic"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = -128 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1101627623 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 36 : i8}> : () -> i8
    %4 = "arith.constant"() <{value = 127 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 107520 : index}> : () -> index
    %6 = "arith.constant"() <{value = 0 : index}> : () -> index
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %8 = "arith.index_castui"(%7) : (i32) -> index
    %9 = "hal.interface.binding.subspan"(%6) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<3360x32xi8>>
    %10 = "hal.interface.binding.subspan"(%6) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xi32>>
    %11 = "hal.interface.binding.subspan"(%5) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xi32>>
    %12 = "hal.interface.binding.subspan"(%6, %8) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x3360xi8>>
    %13 = "hal.interface.binding.subspan"(%6, %8) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x32xi8>>
    %14 = "iree_tensor_ext.dispatch.tensor.load"(%12, %8, %8) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 3360>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x3360xi8>>, index, index) -> tensor<?x3360xi8>
    %15 = "iree_tensor_ext.dispatch.tensor.load"(%9) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 3360, 32>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<3360x32xi8>>) -> tensor<3360x32xi8>
    %16 = "iree_tensor_ext.dispatch.tensor.load"(%10) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 32>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32xi32>>) -> tensor<32xi32>
    %17 = "iree_tensor_ext.dispatch.tensor.load"(%11) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 32>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32xi32>>) -> tensor<32xi32>
    %18 = "tensor.empty"(%8) : (index) -> tensor<?x32xi8>
    %19 = "tensor.empty"(%8) : (index) -> tensor<?x32xi32>
    %20 = "linalg.fill"(%0, %19) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: i32, %arg8: i32):
      "linalg.yield"(%arg7) : (i32) -> ()
    }) : (i32, tensor<?x32xi32>) -> tensor<?x32xi32>
    %21 = "linalg.matmul"(%14, %15, %20) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg4: i8, %arg5: i8, %arg6: i32):
      %33 = "arith.extsi"(%arg4) : (i8) -> i32
      %34 = "arith.extsi"(%arg5) : (i8) -> i32
      %35 = "arith.muli"(%33, %34) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %36 = "arith.addi"(%arg6, %35) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%36) : (i32) -> ()
    }) : (tensor<?x3360xi8>, tensor<3360x32xi8>, tensor<?x32xi32>) -> tensor<?x32xi32>
    %22 = "linalg.generic"(%16, %21, %17, %18) <{indexing_maps = [#map3, #map4, #map3, #map4], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i8):
      %23 = "arith.muli"(%arg2, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %24 = "arith.subi"(%arg1, %23) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %25 = "arith.addi"(%arg0, %24) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %26 = "tosa.apply_scale"(%25, %2, %3) <{rounding_mode = #tosa.rounding_mode<DOUBLE_ROUND>}> : (i32, i32, i8) -> i32
      %27 = "arith.addi"(%26, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %28 = "arith.cmpi"(%27, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
      %29 = "arith.select"(%28, %1, %27) : (i1, i32, i32) -> i32
      %30 = "arith.cmpi"(%27, %4) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %31 = "arith.select"(%30, %4, %29) : (i1, i32, i32) -> i32
      %32 = "arith.trunci"(%31) <{overflowFlags = #arith.overflow<none>}> : (i32) -> i8
      "linalg.yield"(%32) : (i8) -> ()
    }) : (tensor<32xi32>, tensor<?x32xi32>, tensor<32xi32>, tensor<?x32xi8>) -> tensor<?x32xi8>
    "iree_tensor_ext.dispatch.tensor.store"(%22, %13, %8, %8) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 32>, static_strides = array<i64: 1, 1>}> : (tensor<?x32xi8>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x32xi8>>, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_vmvx_bytecode_fb} : () -> ()
}) : () -> ()

