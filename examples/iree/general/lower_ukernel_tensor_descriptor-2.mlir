#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x32xf32>, tensor<16x32xf32>) -> tensor<16x16xf32>, sym_name = "no_ops_to_convert"}> ({
  ^bb0(%arg0: tensor<16x32xf32>, %arg1: tensor<16x32xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "tensor.empty"() : () -> tensor<16x16xf32>
    %2 = "linalg.fill"(%0, %1) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32):
      "linalg.yield"(%arg2) : (f32) -> ()
    }) : (f32, tensor<16x16xf32>) -> tensor<16x16xf32>
    "func.return"(%2) : (tensor<16x16xf32>) -> ()
  }) : () -> ()
}) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()

