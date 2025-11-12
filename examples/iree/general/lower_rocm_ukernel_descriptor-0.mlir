#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree_codegen.ukernel_provider = #rocm.ukernel_provider}>
#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> ()>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, tensor<f32>, tensor<i64>) -> tensor<i64>, sym_name = "pure_argmax_ukernel_test_with_provider"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<f32>, %arg2: tensor<i64>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1:2 = "linalg.generic"(%arg0, %arg1, %arg2) <{indexing_maps = [#map, #map1, #map1], iterator_types = [#linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 2>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: i64):
      %2 = "linalg.index"() <{dim = 0 : i64}> : () -> index
      %3 = "arith.index_cast"(%2) : (index) -> i64
      %4 = "arith.maximumf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %5 = "arith.cmpf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>, predicate = 2 : i64}> : (f32, f32) -> i1
      %6 = "arith.select"(%5, %3, %arg5) : (i1, i64, i64) -> i64
      "linalg.yield"(%4, %6) : (f32, i64) -> ()
    }) {iree_codegen.ukernel = #iree_codegen.ukernel_descriptor<"iree_uk_amdgpu_argmax_f32i64", bitcode>} : (tensor<?xf32>, tensor<f32>, tensor<i64>) -> (tensor<f32>, tensor<i64>)
    "func.return"(%1#1) : (tensor<i64>) -> ()
  }) : () -> ()
}) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()

