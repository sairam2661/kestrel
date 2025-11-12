#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "", target_triple = "x86_64-xyz-xyz", ukernels = "mmt4d"}>
#map = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d3, d4, d6)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d2, d3, d5, d6)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d4, d5)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x10x32x8x1xi8>, tensor<1x80x32x4x1xi8>, tensor<1x10x80x8x4xi32>) -> tensor<1x10x80x8x4xi32>, sym_name = "batch_mmt4d_with_extened_inputs"}> ({
  ^bb0(%arg0: tensor<1x10x32x8x1xi8>, %arg1: tensor<1x80x32x4x1xi8>, %arg2: tensor<1x10x80x8x4xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tensor.empty"() : () -> tensor<1x10x32x8x1xi32>
    %2 = "linalg.generic"(%arg0, %1) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg10: i8, %arg11: i32):
      %10 = "arith.extsi"(%arg10) : (i8) -> i32
      "linalg.yield"(%10) : (i32) -> ()
    }) : (tensor<1x10x32x8x1xi8>, tensor<1x10x32x8x1xi32>) -> tensor<1x10x32x8x1xi32>
    %3 = "tensor.empty"() : () -> tensor<1x80x32x4x1xi32>
    %4 = "linalg.generic"(%arg1, %3) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg8: i8, %arg9: i32):
      %9 = "arith.extsi"(%arg8) : (i8) -> i32
      "linalg.yield"(%9) : (i32) -> ()
    }) : (tensor<1x80x32x4x1xi8>, tensor<1x80x32x4x1xi32>) -> tensor<1x80x32x4x1xi32>
    %5 = "linalg.fill"(%0, %arg2) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: i32, %arg7: i32):
      "linalg.yield"(%arg6) : (i32) -> ()
    }) : (i32, tensor<1x10x80x8x4xi32>) -> tensor<1x10x80x8x4xi32>
    %6 = "linalg.batch_mmt4d"(%2, %4, %5) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %7 = "arith.muli"(%arg3, %arg4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %8 = "arith.addi"(%arg5, %7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%8) : (i32) -> ()
    }) {linalg.memoized_indexing_maps = [#map1, #map2, #map3]} : (tensor<1x10x32x8x1xi32>, tensor<1x80x32x4x1xi32>, tensor<1x10x80x8x4xi32>) -> tensor<1x10x80x8x4xi32>
    "func.return"(%6) : (tensor<1x10x80x8x4xi32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

