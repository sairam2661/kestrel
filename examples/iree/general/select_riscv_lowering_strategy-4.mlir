#executable_target_embedded_elf_riscv_32 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_32", {cpu_features = "+m,+f", data_layout = "e-m:e-p:32:32-i64:64-n32-S128", native_vector_size = 16 : index, target_triple = "riscv32-none-elf"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5, d3)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x57x57x72xf32>, tensor<3x3x72xf32>) -> tensor<1x28x28x72xf32>, sym_name = "thin_depthwise_conv_static"}> ({
  ^bb0(%arg0: tensor<1x57x57x72xf32>, %arg1: tensor<3x3x72xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "tensor.empty"() : () -> tensor<1x28x28x72xf32>
    %2 = "linalg.fill"(%0, %1) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f32, %arg6: f32):
      "linalg.yield"(%arg5) : (f32) -> ()
    }) : (f32, tensor<1x28x28x72xf32>) -> tensor<1x28x28x72xf32>
    %3 = "linalg.depthwise_conv_2d_nhwc_hwc"(%arg0, %arg1, %2) <{dilations = dense<1> : tensor<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<2> : tensor<2xi64>}> ({
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %4 = "arith.mulf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %5 = "arith.addf"(%arg4, %4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%5) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<1x57x57x72xf32>, tensor<3x3x72xf32>, tensor<1x28x28x72xf32>) -> tensor<1x28x28x72xf32>
    "func.return"(%3) : (tensor<1x28x28x72xf32>) -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_riscv_32} : () -> ()
}) : () -> ()

