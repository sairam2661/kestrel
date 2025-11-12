#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512vnni", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "x86_64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [i8, i8, i32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [32, 1, 11008, 128]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : i64, op_type =  matmul, element_types = [i8, i8, i32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [32, 1, 11008, 128]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [i8, i8, i32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [32, 1, 11008, 128]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32x1x128xi8>, tensor<32x128x11008xi8>) -> tensor<32x1x11008xi32>, sym_name = "extend_batch_vecmat_explicit_unit_dim"}> ({
  ^bb0(%arg0: tensor<32x1x128xi8>, %arg1: tensor<32x128x11008xi8>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "iree_encoding.set_encoding"(%arg0) : (tensor<32x1x128xi8>) -> tensor<32x1x128xi8, #encoding>
    %2 = "tensor.empty"() : () -> tensor<32x1x128xi32, #encoding>
    %3 = "linalg.generic"(%1, %2) <{indexing_maps = [#map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg9: i8, %arg10: i32):
      %14 = "arith.extsi"(%arg9) : (i8) -> i32
      "linalg.yield"(%14) : (i32) -> ()
    }) : (tensor<32x1x128xi8, #encoding>, tensor<32x1x128xi32, #encoding>) -> tensor<32x1x128xi32, #encoding>
    %4 = "iree_encoding.set_encoding"(%arg1) : (tensor<32x128x11008xi8>) -> tensor<32x128x11008xi8, #encoding1>
    %5 = "tensor.empty"() : () -> tensor<32x128x11008xi32, #encoding1>
    %6 = "linalg.generic"(%4, %5) <{indexing_maps = [#map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: i8, %arg8: i32):
      %13 = "arith.extsi"(%arg7) : (i8) -> i32
      "linalg.yield"(%13) : (i32) -> ()
    }) : (tensor<32x128x11008xi8, #encoding1>, tensor<32x128x11008xi32, #encoding1>) -> tensor<32x128x11008xi32, #encoding1>
    %7 = "tensor.empty"() : () -> tensor<32x1x11008xi32, #encoding2>
    %8 = "linalg.fill"(%0, %7) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: i32, %arg6: i32):
      "linalg.yield"(%arg5) : (i32) -> ()
    }) : (i32, tensor<32x1x11008xi32, #encoding2>) -> tensor<32x1x11008xi32, #encoding2>
    %9 = "linalg.batch_matmul"(%3, %6, %8) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
      %11 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %12 = "arith.addi"(%arg4, %11) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%12) : (i32) -> ()
    }) : (tensor<32x1x128xi32, #encoding>, tensor<32x128x11008xi32, #encoding1>, tensor<32x1x11008xi32, #encoding2>) -> tensor<32x1x11008xi32, #encoding2>
    %10 = "iree_encoding.unset_encoding"(%9) : (tensor<32x1x11008xi32, #encoding2>) -> tensor<32x1x11008xi32>
    "func.return"(%10) : (tensor<32x1x11008xi32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

