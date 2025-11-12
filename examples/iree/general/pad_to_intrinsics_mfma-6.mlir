#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#device_target_rocm = #hal.device.target<"rocm", [#executable_target_rocm_hsaco_fb]> : !hal.device
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x20xf16>, tensor<20x30xf16>, tensor<2x30xf16>) -> tensor<2x30xf16>, sym_name = "skip_skinny_m_matmul"}> ({
  ^bb0(%arg0: tensor<2x20xf16>, %arg1: tensor<20x30xf16>, %arg2: tensor<2x30xf16>):
    %0 = "linalg.matmul"(%arg0, %arg1, %arg2) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f16, %arg4: f16, %arg5: f16):
      %1 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      %2 = "arith.addf"(%arg5, %1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      "linalg.yield"(%2) : (f16) -> ()
    }) : (tensor<2x20xf16>, tensor<20x30xf16>, tensor<2x30xf16>) -> tensor<2x30xf16>
    "func.return"(%0) : (tensor<2x30xf16>) -> ()
  }) {hal.device.targets = [#device_target_rocm]} : () -> ()
}) : () -> ()

