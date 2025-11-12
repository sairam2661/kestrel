#executable_target_system_elf_arm_64 = #hal.executable.target<"llvm-cpu", "system-elf-arm_64", {cpu_features = "+dotprod", target_triple = "aarch64-none-linux-android29"}>
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d2, d4, d5)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d4)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<1x2x8x4xi8>, memref<1x2x8x4xi8>, memref<1x1x8x8xi32>) -> (), sym_name = "mmt4d_kernel_dispatch"}> ({
  ^bb0(%arg0: memref<1x2x8x4xi8>, %arg1: memref<1x2x8x4xi8>, %arg2: memref<1x1x8x8xi32>):
    %0 = "arith.constant"() <{value = 0 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = dense<0> : vector<1x1x8x8xi32>}> : () -> vector<1x1x8x8xi32>
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    "vector.transfer_write"(%1, %arg2, %4, %4, %4, %4) <{in_bounds = [true, true, true, true], operandSegmentSizes = array<i32: 1, 1, 4, 0>, permutation_map = #map}> : (vector<1x1x8x8xi32>, memref<1x1x8x8xi32>, index, index, index, index) -> ()
    %5 = "scf.for"(%4, %2, %3, %1) ({
    ^bb0(%arg3: index, %arg4: vector<1x1x8x8xi32>):
      %6 = "vector.transfer_read"(%arg0, %4, %arg3, %4, %4, %0) <{in_bounds = [true, true, true, true], operandSegmentSizes = array<i32: 1, 4, 1, 0>, permutation_map = #map}> : (memref<1x2x8x4xi8>, index, index, index, index, i8) -> vector<1x1x8x4xi8>
      %7 = "vector.transfer_read"(%arg1, %4, %arg3, %4, %4, %0) <{in_bounds = [true, true, true, true], operandSegmentSizes = array<i32: 1, 4, 1, 0>, permutation_map = #map}> : (memref<1x2x8x4xi8>, index, index, index, index, i8) -> vector<1x1x8x4xi8>
      %8 = "arith.extsi"(%6) : (vector<1x1x8x4xi8>) -> vector<1x1x8x4xi32>
      %9 = "arith.extsi"(%7) : (vector<1x1x8x4xi8>) -> vector<1x1x8x4xi32>
      %10 = "vector.contract"(%8, %9, %arg4) <{indexing_maps = [#map1, #map2, #map3], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>, #vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<1x1x8x4xi32>, vector<1x1x8x4xi32>, vector<1x1x8x8xi32>) -> vector<1x1x8x8xi32>
      "scf.yield"(%10) : (vector<1x1x8x8xi32>) -> ()
    }) : (index, index, index, vector<1x1x8x8xi32>) -> vector<1x1x8x8xi32>
    "vector.transfer_write"(%5, %arg2, %4, %4, %4, %4) <{in_bounds = [true, true, true, true], operandSegmentSizes = array<i32: 1, 1, 4, 0>, permutation_map = #map}> : (vector<1x1x8x8xi32>, memref<1x1x8x8xi32>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_system_elf_arm_64} : () -> ()
}) : () -> ()

