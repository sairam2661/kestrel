#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 32 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<(d0) -> (d0)>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
"builtin.module"() <{sym_name = "example"}> ({
  "func.func"() <{function_type = (tensor<?xf32>, tensor<?xf32>, tensor<10xf32>, tensor<10xf32>) -> (tensor<?xf32>, tensor<10xf32>), sym_name = "mixed_invocation"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>, %arg2: tensor<10xf32>, %arg3: tensor<10xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.dim"(%arg0, %0) : (tensor<?xf32>, index) -> index
    %2 = "tensor.empty"(%1) : (index) -> tensor<?xf32>
    %3 = "linalg.generic"(%arg0, %arg1, %2) <{indexing_maps = [#map, #map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg15: f32, %arg16: f32, %arg17: f32):
      %15 = "arith.mulf"(%arg15, %arg16) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%15) : (f32) -> ()
    }) : (tensor<?xf32>, tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    %4 = "linalg.generic"(%3, %2) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg13: f32, %arg14: f32):
      %14 = "math.absf"(%arg13) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      "linalg.yield"(%14) : (f32) -> ()
    }) : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    %5 = "linalg.generic"(%4, %2) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg11: f32, %arg12: f32):
      %13 = "arith.negf"(%arg11) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      "linalg.yield"(%13) : (f32) -> ()
    }) : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    %6 = "tensor.empty"() : () -> tensor<10xf32>
    %7 = "linalg.generic"(%arg2, %arg3, %6) <{indexing_maps = [#map, #map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg8: f32, %arg9: f32, %arg10: f32):
      %12 = "arith.mulf"(%arg8, %arg9) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%12) : (f32) -> ()
    }) : (tensor<10xf32>, tensor<10xf32>, tensor<10xf32>) -> tensor<10xf32>
    %8 = "linalg.generic"(%7, %6) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: f32, %arg7: f32):
      %11 = "math.absf"(%arg6) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      "linalg.yield"(%11) : (f32) -> ()
    }) : (tensor<10xf32>, tensor<10xf32>) -> tensor<10xf32>
    %9 = "linalg.generic"(%8, %6) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg4: f32, %arg5: f32):
      %10 = "arith.negf"(%arg4) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      "linalg.yield"(%10) : (f32) -> ()
    }) : (tensor<10xf32>, tensor<10xf32>) -> tensor<10xf32>
    "func.return"(%5, %9) : (tensor<?xf32>, tensor<10xf32>) -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_local]} : () -> ()

