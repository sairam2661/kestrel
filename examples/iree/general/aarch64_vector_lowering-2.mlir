#executable_target_embedded_elf_arm_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {cpu = "generic", cpu_features = "+neon,+i8mm,+reserve-x18", data_layout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128", native_vector_size = 16 : i64, target_triple = "aarch64-unknown-unknown-eabi-elf", ukernels = "none"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d2, d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d4)>
#translation = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>
"builtin.module"() ({
  "func.func"() <{function_type = (vector<1x1x8x1xi8>, vector<1x1x8x1xi8>, vector<1x1x8x8xi32>) -> vector<1x1x8x8xi32>, sym_name = "simpul_mul_mixed_mini_no_custom_kernel"}> ({
  ^bb0(%arg0: vector<1x1x8x1xi8>, %arg1: vector<1x1x8x1xi8>, %arg2: vector<1x1x8x8xi32>):
    %0 = "arith.extsi"(%arg0) : (vector<1x1x8x1xi8>) -> vector<1x1x8x1xi32>
    %1 = "arith.extsi"(%arg1) : (vector<1x1x8x1xi8>) -> vector<1x1x8x1xi32>
    %2 = "vector.contract"(%0, %1, %arg2) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>, #vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<1x1x8x1xi32>, vector<1x1x8x1xi32>, vector<1x1x8x8xi32>) -> vector<1x1x8x8xi32>
    "func.return"(%2) : (vector<1x1x8x8xi32>) -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_arm_64, translation_info = #translation} : () -> ()
}) : () -> ()

