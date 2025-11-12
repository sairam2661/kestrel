#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "aarch64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [16, 1, 16]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [16, 1, 16]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [16, 1, 16]>
"builtin.module"() ({
  "func.func"() <{function_type = (!hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view, sym_name = "matvec_shaped_matmul_lowering_f32f32f32_aarch64"}> ({
  ^bb0(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.tensor.import"(%arg0) <{name = "input0", operandSegmentSizes = array<i32: 1, 0, 0>, target_encoding = tensor<16x16xf32>}> : (!hal.buffer_view) -> tensor<16x16xf32>
    %2 = "hal.tensor.import"(%arg1) <{name = "input1", operandSegmentSizes = array<i32: 1, 0, 0>, target_encoding = tensor<16x1xf32>}> : (!hal.buffer_view) -> tensor<16x1xf32>
    %3 = "hal.tensor.import"(%arg2) <{name = "input2", operandSegmentSizes = array<i32: 1, 0, 0>, target_encoding = tensor<16x1xf32>}> : (!hal.buffer_view) -> tensor<16x1xf32>
    %4 = "iree_encoding.set_encoding"(%1) : (tensor<16x16xf32>) -> tensor<16x16xf32, #encoding>
    %5 = "iree_encoding.set_encoding"(%2) : (tensor<16x1xf32>) -> tensor<16x1xf32, #encoding1>
    %6 = "iree_encoding.set_encoding"(%3) : (tensor<16x1xf32>) -> tensor<16x1xf32, #encoding2>
    %7 = "linalg.matmul"(%4, %5, %6) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %10 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %11 = "arith.addf"(%arg5, %10) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%11) : (f32) -> ()
    }) : (tensor<16x16xf32, #encoding>, tensor<16x1xf32, #encoding1>, tensor<16x1xf32, #encoding2>) -> tensor<16x1xf32, #encoding2>
    %8 = "iree_encoding.unset_encoding"(%7) : (tensor<16x1xf32, #encoding2>) -> tensor<16x1xf32>
    %9 = "hal.tensor.export"(%8) <{name = "output0", source_encoding = tensor<16x1xf32>}> : (tensor<16x1xf32>) -> !hal.buffer_view
    "func.return"(%9) : (!hal.buffer_view) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

