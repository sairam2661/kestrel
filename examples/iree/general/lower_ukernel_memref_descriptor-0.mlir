#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree_codegen.ukernel_provider = #iree_codegen.symbolic_ukernel_provider}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<16x32xf32>, memref<16x32xf32>, memref<16x16xf32>) -> (), sym_name = "ukernel_impl", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (memref<16x32xf32>, memref<16x32xf32>, memref<16x16xf32>) -> (), sym_name = "test"}> ({
  ^bb0(%arg8: memref<16x32xf32>, %arg9: memref<16x32xf32>, %arg10: memref<16x16xf32>):
    "func.call"(%arg8, %arg9, %arg10) <{callee = @ukernel_impl}> : (memref<16x32xf32>, memref<16x32xf32>, memref<16x16xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<16x32xf32>, memref<16x32xf32>, memref<16x16xf32>) -> (), sym_name = "replace_generic_with_ukernel_impl"}> ({
  ^bb0(%arg0: memref<16x32xf32>, %arg1: memref<16x32xf32>, %arg2: memref<16x16xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    "linalg.fill"(%0, %arg2) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: f32, %arg7: f32):
      "linalg.yield"(%arg6) : (f32) -> ()
    }) : (f32, memref<16x16xf32>) -> ()
    "linalg.generic"(%arg0, %arg1, %arg2) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %1 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %2 = "arith.addf"(%arg5, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%2) : (f32) -> ()
    }) {iree_codegen.ukernel = #iree_codegen.ukernel_descriptor<"test", memref>} : (memref<16x32xf32>, memref<16x32xf32>, memref<16x16xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()

