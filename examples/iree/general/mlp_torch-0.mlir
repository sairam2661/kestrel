#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 32 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
"builtin.module"() <{sym_name = "example"}> ({
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>, sym_name = "mlp_invocation"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "tensor.dim"(%arg0, %0) : (tensor<?x?xf32>, index) -> index
    %4 = "tensor.dim"(%arg1, %1) : (tensor<?x?xf32>, index) -> index
    %5 = "tensor.empty"(%3, %4) : (index, index) -> tensor<?x?xf32>
    %6 = "torch_c.from_builtin_tensor"(%arg0) : (tensor<?x?xf32>) -> !torch.vtensor<[?,?],f32>
    %7 = "torch_c.from_builtin_tensor"(%arg1) : (tensor<?x?xf32>) -> !torch.vtensor<[?,?],f32>
    %8 = "torch.aten.mm"(%6, %7) : (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],f32>
    %9 = "torch.aten.relu"(%8) : (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],f32>
    %10 = "torch_c.to_builtin_tensor"(%9) : (!torch.vtensor<[?,?],f32>) -> tensor<?x?xf32>
    %11 = "linalg.generic"(%10, %5) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32):
      %12 = "arith.negf"(%arg2) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      "linalg.yield"(%12) : (f32) -> ()
    }) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%11) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_local]} : () -> ()

