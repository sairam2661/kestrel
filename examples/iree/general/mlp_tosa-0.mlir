#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 32 : index, target_triple = "x86_64-none-elf"}>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
"builtin.module"() <{sym_name = "example"}> ({
  "func.func"() <{function_type = (tensor<2x4xf32>, tensor<4x8xf32>) -> tensor<2x8xf32>, sym_name = "mlp_invocation"}> ({
  ^bb0(%arg0: tensor<2x4xf32>, %arg1: tensor<4x8xf32>):
    %0 = "tosa.const_shape"() <{values = dense<[1, 2, 4]> : tensor<3xindex>}> : () -> !tosa.shape<3>
    %1 = "tosa.const_shape"() <{values = dense<[1, 4, 8]> : tensor<3xindex>}> : () -> !tosa.shape<3>
    %2 = "tosa.reshape"(%arg0, %0) : (tensor<2x4xf32>, !tosa.shape<3>) -> tensor<1x2x4xf32>
    %3 = "tosa.reshape"(%arg1, %1) : (tensor<4x8xf32>, !tosa.shape<3>) -> tensor<1x4x8xf32>
    %4 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %5 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %6 = "tosa.matmul"(%2, %3, %4, %5) : (tensor<1x2x4xf32>, tensor<1x4x8xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<1x2x8xf32>
    %7 = "tosa.clamp"(%6) <{max_val = 3.40282347E+38 : f32, min_val = 0.000000e+00 : f32, nan_mode = #tosa.nan_mode<PROPAGATE>}> : (tensor<1x2x8xf32>) -> tensor<1x2x8xf32>
    %8 = "tosa.negate"(%7, %4, %5) : (tensor<1x2x8xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<1x2x8xf32>
    %9 = "tosa.const_shape"() <{values = dense<[2, 8]> : tensor<2xindex>}> : () -> !tosa.shape<2>
    %10 = "tosa.reshape"(%8, %9) : (tensor<1x2x8xf32>, !tosa.shape<2>) -> tensor<2x8xf32>
    "func.return"(%10) : (tensor<2x8xf32>) -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_local]} : () -> ()

