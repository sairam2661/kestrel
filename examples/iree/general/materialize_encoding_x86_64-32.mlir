#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512vnni", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "x86_64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2) -> (d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [i16, ui4, i32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [1, 4096, 128]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : i64, op_type =  matmul, element_types = [i16, ui4, i32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [1, 4096, 128]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [i16, ui4, i32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [1, 4096, 128]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32x128xi16>, tensor<4096x32x128xi4>, tensor<4096x32xi32>) -> tensor<4096x32xi32>, sym_name = "generic_batch_vecmat_transposed_i16u4i32"}> ({
  ^bb0(%arg0: tensor<32x128xi16>, %arg1: tensor<4096x32x128xi4>, %arg2: tensor<4096x32xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : i4}> : () -> i4
    %2 = "arith.constant"() <{value = 4096 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %4 = "arith.constant"() <{value = 128 : index}> : () -> index
    %5 = "arith.constant"() <{value = 32 : index}> : () -> index
    %6 = "iree_encoding.set_encoding"(%arg0) : (tensor<32x128xi16>) -> tensor<32x128xi16, #encoding>
    %7 = "iree_encoding.set_encoding"(%arg1) : (tensor<4096x32x128xi4>) -> tensor<4096x32x128xi4, #encoding1>
    %8 = "iree_encoding.set_encoding"(%arg2) : (tensor<4096x32xi32>) -> tensor<4096x32xi32, #encoding2>
    %9 = "linalg.generic"(%6, %7, %8) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: i16, %arg4: i4, %arg5: i32):
      %11 = "arith.extsi"(%arg3) : (i16) -> i32
      %12 = "arith.extui"(%arg4) : (i4) -> i32
      %13 = "arith.muli"(%11, %12) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %14 = "arith.addi"(%13, %arg5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%14) : (i32) -> ()
    }) : (tensor<32x128xi16, #encoding>, tensor<4096x32x128xi4, #encoding1>, tensor<4096x32xi32, #encoding2>) -> tensor<4096x32xi32, #encoding2>
    %10 = "iree_encoding.unset_encoding"(%9) : (tensor<4096x32xi32, #encoding2>) -> tensor<4096x32xi32>
    "func.return"(%10) : (tensor<4096x32xi32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

