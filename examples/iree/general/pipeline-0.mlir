#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb", {ukernels = "all"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<()[s0] -> (16 ceildiv s0)>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d5)>
#map5 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d2, d4, d5)>
#map6 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d4)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [i8, i8, i32], user_indexing_maps = [#map, #map1, #map2]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : i64, op_type =  matmul, element_types = [i8, i8, i32], user_indexing_maps = [#map, #map1, #map2]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [i8, i8, i32], user_indexing_maps = [#map, #map1, #map2]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "mmt4d_i8"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 256 : index}> : () -> index
    %2 = "arith.constant"() <{value = 512 : index}> : () -> index
    %3 = "arith.constant"() <{value = 16 : index}> : () -> index
    %4:2 = "iree_codegen.query_tile_sizes"() <{tensor_type = tensor<16x16xi8, #encoding>}> : () -> (index, index)
    %5 = "affine.apply"(%4#0) <{map = #map3}> : (index) -> index
    %6 = "affine.apply"(%4#1) <{map = #map3}> : (index) -> index
    %7 = "hal.interface.binding.subspan"(%0, %5, %6, %4#0, %4#1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 4>}> : (index, index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xi8>>
    %8:2 = "iree_codegen.query_tile_sizes"() <{tensor_type = tensor<16x16xi8, #encoding1>}> : () -> (index, index)
    %9 = "affine.apply"(%8#0) <{map = #map3}> : (index) -> index
    %10 = "affine.apply"(%8#1) <{map = #map3}> : (index) -> index
    %11 = "hal.interface.binding.subspan"(%1, %9, %10, %8#0, %8#1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 4>}> : (index, index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xi8>>
    %12:2 = "iree_codegen.query_tile_sizes"() <{tensor_type = tensor<16x16xi32, #encoding2>}> : () -> (index, index)
    %13 = "affine.apply"(%12#0) <{map = #map3}> : (index) -> index
    %14 = "affine.apply"(%12#1) <{map = #map3}> : (index) -> index
    %15 = "hal.interface.binding.subspan"(%2, %13, %14, %12#0, %12#1) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 4>}> : (index, index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?x?x?xi32>>
    %16 = "iree_tensor_ext.dispatch.tensor.load"(%7, %5, %6, %4#0, %4#1, %5, %6, %4#0, %4#1) <{operandSegmentSizes = array<i32: 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xi8>>, index, index, index, index, index, index, index, index) -> tensor<?x?x?x?xi8>
    %17 = "iree_tensor_ext.dispatch.tensor.load"(%11, %9, %10, %8#0, %8#1, %9, %10, %8#0, %8#1) <{operandSegmentSizes = array<i32: 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xi8>>, index, index, index, index, index, index, index, index) -> tensor<?x?x?x?xi8>
    %18 = "iree_tensor_ext.dispatch.tensor.load"(%15, %13, %14, %12#0, %12#1, %13, %14, %12#0, %12#1) <{operandSegmentSizes = array<i32: 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?x?x?xi32>>, index, index, index, index, index, index, index, index) -> tensor<?x?x?x?xi32>
    %19 = "linalg.mmt4d"(%16, %17, %18) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: i8, %arg1: i8, %arg2: i32):
      %20 = "arith.extsi"(%arg0) : (i8) -> i32
      %21 = "arith.extsi"(%arg1) : (i8) -> i32
      %22 = "arith.muli"(%20, %21) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %23 = "arith.addi"(%arg2, %22) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%23) : (i32) -> ()
    }) {linalg.memoized_indexing_maps = [#map4, #map5, #map6]} : (tensor<?x?x?x?xi8>, tensor<?x?x?x?xi8>, tensor<?x?x?x?xi32>) -> tensor<?x?x?x?xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%19, %15, %13, %14, %12#0, %12#1, %13, %14, %12#0, %12#1) <{operandSegmentSizes = array<i32: 1, 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<?x?x?x?xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?x?x?xi32>>, index, index, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_vmvx_bytecode_fb} : () -> ()
}) : () -> ()

