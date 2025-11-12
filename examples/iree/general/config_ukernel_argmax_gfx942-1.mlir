#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {ukernels = "all"}>
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x?xf32>) -> tensor<1x1x1xi64>, sym_name = "argmax_4d_unit_parallel_f32i64"}> ({
  ^bb0(%arg0: tensor<1x1x1x?xf32>):
    %0 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 0xFF800000 : f32}> : () -> f32
    %2 = "tensor.empty"() : () -> tensor<1x1x1xi64>
    %3 = "linalg.fill"(%0, %2) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: i64, %arg7: i64):
      "linalg.yield"(%arg6) : (i64) -> ()
    }) : (i64, tensor<1x1x1xi64>) -> tensor<1x1x1xi64>
    %4 = "tensor.empty"() : () -> tensor<1x1x1xf32>
    %5 = "linalg.fill"(%1, %4) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg4: f32, %arg5: f32):
      "linalg.yield"(%arg4) : (f32) -> ()
    }) : (f32, tensor<1x1x1xf32>) -> tensor<1x1x1xf32>
    %6:2 = "linalg.generic"(%arg0, %5, %3) <{indexing_maps = [#map, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 2>}> ({
    ^bb0(%arg1: f32, %arg2: f32, %arg3: i64):
      %7 = "linalg.index"() <{dim = 1 : i64}> : () -> index
      %8 = "arith.index_cast"(%7) : (index) -> i64
      %9 = "arith.maximumf"(%arg1, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %10 = "arith.cmpf"(%arg1, %arg2) <{fastmath = #arith.fastmath<none>, predicate = 2 : i64}> : (f32, f32) -> i1
      %11 = "arith.select"(%10, %8, %arg3) : (i1, i64, i64) -> i64
      "linalg.yield"(%9, %11) : (f32, i64) -> ()
    }) : (tensor<1x1x1x?xf32>, tensor<1x1x1xf32>, tensor<1x1x1xi64>) -> (tensor<1x1x1xf32>, tensor<1x1x1xi64>)
    "func.return"(%6#1) : (tensor<1x1x1xi64>) -> ()
  }) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()
}) : () -> ()

