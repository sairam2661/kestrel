#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512vnni", target_triple = "x86_64-xyz-xyz", ukernels = "all"}>
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d2, d4, d5)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d4)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10x1x8xi16>, tensor<10x10x32x8xi4>, tensor<10x10x1x32xi32>) -> tensor<10x10x1x32xi32>, sym_name = "mmt4d_i16u4i32_extend_producers"}> ({
  ^bb0(%arg0: tensor<10x10x1x8xi16>, %arg1: tensor<10x10x32x8xi4>, %arg2: tensor<10x10x1x32xi32>):
    %0 = "tensor.empty"() : () -> tensor<10x10x1x8xi32>
    %1 = "linalg.generic"(%arg0, %0) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg8: i16, %arg9: i32):
      %8 = "arith.extsi"(%arg8) : (i16) -> i32
      "linalg.yield"(%8) : (i32) -> ()
    }) : (tensor<10x10x1x8xi16>, tensor<10x10x1x8xi32>) -> tensor<10x10x1x8xi32>
    %2 = "tensor.empty"() : () -> tensor<10x10x32x8xi32>
    %3 = "linalg.generic"(%arg1, %2) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: i4, %arg7: i32):
      %7 = "arith.extui"(%arg6) : (i4) -> i32
      "linalg.yield"(%7) : (i32) -> ()
    }) : (tensor<10x10x32x8xi4>, tensor<10x10x32x8xi32>) -> tensor<10x10x32x8xi32>
    %4 = "linalg.mmt4d"(%1, %3, %arg2) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %5 = "arith.muli"(%arg3, %arg4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %6 = "arith.addi"(%arg5, %5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%6) : (i32) -> ()
    }) {linalg.memoized_indexing_maps = [#map1, #map2, #map3]} : (tensor<10x10x1x8xi32>, tensor<10x10x32x8xi32>, tensor<10x10x1x32xi32>) -> tensor<10x10x1x32xi32>
    "func.return"(%4) : (tensor<10x10x1x32xi32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

