#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree_codegen.ukernel_provider = #rocm.tensor_ukernel_provider}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x32xf32>, tensor<16x32xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>, sym_name = "ukernel_impl", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (tensor<16x32xf32>, tensor<16x32xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>, sym_name = "test"}> ({
  ^bb0(%arg7: tensor<16x32xf32>, %arg8: tensor<16x32xf32>, %arg9: tensor<16x16xf32>):
    %6 = "func.call"(%arg7, %arg8, %arg9) <{callee = @ukernel_impl}> : (tensor<16x32xf32>, tensor<16x32xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
    "func.return"(%6) : (tensor<16x16xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<16x32xf32>, tensor<16x32xf32>) -> tensor<16x16xf32>, sym_name = "replace_generic_with_ukernel_impl"}> ({
  ^bb0(%arg0: tensor<16x32xf32>, %arg1: tensor<16x32xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "tensor.empty"() : () -> tensor<16x16xf32>
    %2 = "linalg.fill"(%0, %1) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f32, %arg6: f32):
      "linalg.yield"(%arg5) : (f32) -> ()
    }) : (f32, tensor<16x16xf32>) -> tensor<16x16xf32>
    %3 = "linalg.generic"(%arg0, %arg1, %2) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %4 = "arith.mulf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %5 = "arith.addf"(%arg4, %4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%5) : (f32) -> ()
    }) {iree_codegen.ukernel = #iree_codegen.ukernel_descriptor<"test", tensor>} : (tensor<16x32xf32>, tensor<16x32xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
    "func.return"(%3) : (tensor<16x16xf32>) -> ()
  }) : () -> ()
}) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()

