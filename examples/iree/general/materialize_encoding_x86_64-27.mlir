#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512vnni", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "x86_64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [i8, i8, i32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [11008, 1, 128]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : i64, op_type =  matmul, element_types = [i8, i8, i32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [11008, 1, 128]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [i8, i8, i32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [11008, 1, 128]>
"builtin.module"() ({
  "func.func"() <{function_type = (!hal.buffer_view, !hal.buffer_view, !hal.buffer_view) -> !hal.buffer_view, sym_name = "batch_matvec"}> ({
  ^bb0(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view):
    %0 = "hal.tensor.import"(%arg0) <{name = "input0", operandSegmentSizes = array<i32: 1, 0, 0>, target_encoding = tensor<32x11008x128xi8>}> : (!hal.buffer_view) -> tensor<32x11008x128xi8>
    %1 = "hal.tensor.import"(%arg1) <{name = "input1", operandSegmentSizes = array<i32: 1, 0, 0>, target_encoding = tensor<32x128xi8>}> : (!hal.buffer_view) -> tensor<32x128xi8>
    %2 = "hal.tensor.import"(%arg2) <{name = "input2", operandSegmentSizes = array<i32: 1, 0, 0>, target_encoding = tensor<32x11008xi32>}> : (!hal.buffer_view) -> tensor<32x11008xi32>
    %3 = "iree_encoding.set_encoding"(%0) : (tensor<32x11008x128xi8>) -> tensor<32x11008x128xi8, #encoding>
    %4 = "iree_encoding.set_encoding"(%1) : (tensor<32x128xi8>) -> tensor<32x128xi8, #encoding1>
    %5 = "iree_encoding.set_encoding"(%2) : (tensor<32x11008xi32>) -> tensor<32x11008xi32, #encoding2>
    %6 = "linalg.batch_matvec"(%3, %4, %5) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: i8, %arg4: i8, %arg5: i32):
      %9 = "arith.extsi"(%arg3) : (i8) -> i32
      %10 = "arith.extsi"(%arg4) : (i8) -> i32
      %11 = "arith.muli"(%9, %10) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %12 = "arith.addi"(%arg5, %11) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%12) : (i32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<32x11008x128xi8, #encoding>, tensor<32x128xi8, #encoding1>, tensor<32x11008xi32, #encoding2>) -> tensor<32x11008xi32, #encoding2>
    %7 = "iree_encoding.unset_encoding"(%6) : (tensor<32x11008xi32, #encoding2>) -> tensor<32x11008xi32>
    %8 = "hal.tensor.export"(%7) <{name = "output0", source_encoding = tensor<32x11008xi32>}> : (tensor<32x11008xi32>) -> !hal.buffer_view
    "func.return"(%8) : (!hal.buffer_view) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

