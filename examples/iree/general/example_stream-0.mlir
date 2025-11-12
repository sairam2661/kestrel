#executable_target_embedded_elf_arm_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "aarch64-none-elf"}>
#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 32 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<()[s0] -> (s0 ceildiv 64)>
#map1 = affine_map<()[s0] -> (s0 * 64)>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_arm_64, #executable_target_embedded_elf_x86_64]> : !hal.device
"builtin.module"() <{sym_name = "example"}> ({
  "stream.executable"() <{sym_name = "executable", sym_visibility = "private"}> ({
    "stream.executable.export"() <{function_ref = @simple_mul, sym_name = "simple_mul", sym_visibility = "public"}> ({
    ^bb0(%arg10: index):
      %18 = "affine.apply"(%arg10) <{map = #map}> : (index) -> index
      %19 = "arith.constant"() <{value = 1 : index}> : () -> index
      "stream.return"(%18, %19, %19) : (index, index, index) -> ()
    }) : () -> ()
    "stream.executable.export"() <{function_ref = @simple_mul_inplace, sym_name = "simple_mul_inplace", sym_visibility = "public"}> ({
    ^bb0(%arg9: index):
      %16 = "affine.apply"(%arg9) <{map = #map}> : (index) -> index
      %17 = "arith.constant"() <{value = 1 : index}> : () -> index
      "hal.return"(%16, %17, %17) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = (memref<?xf32>, memref<?xf32>, memref<?xf32>, index, index) -> (), sym_name = "simple_mul_workgroup", sym_visibility = "private"}> ({
      }) {hal.import.static} : () -> ()
      "func.func"() <{function_type = (!stream.binding, !stream.binding, !stream.binding, index) -> (), sym_name = "simple_mul"}> ({
      ^bb0(%arg5: !stream.binding, %arg6: !stream.binding, %arg7: !stream.binding, %arg8: index):
        %10 = "arith.constant"() <{value = 0 : index}> : () -> index
        %11 = "stream.dispatch.workgroup.id"() <{dimension = 0 : index}> : () -> index
        %12 = "affine.apply"(%11) <{map = #map1}> : (index) -> index
        %13 = "stream.binding.subspan"(%arg5, %10, %arg8) : (!stream.binding, index, index) -> memref<?xf32>
        %14 = "stream.binding.subspan"(%arg6, %10, %arg8) : (!stream.binding, index, index) -> memref<?xf32>
        %15 = "stream.binding.subspan"(%arg7, %10, %arg8) : (!stream.binding, index, index) -> memref<?xf32>
        "func.call"(%13, %14, %15, %arg8, %12) <{callee = @simple_mul_workgroup}> : (memref<?xf32>, memref<?xf32>, memref<?xf32>, index, index) -> ()
        "func.return"() : () -> ()
      }) : () -> ()
      "func.func"() <{function_type = (memref<?xf32>, memref<?xf32>, index, index) -> (), sym_name = "simple_mul_inplace_workgroup", sym_visibility = "private"}> ({
      }) {hal.import.static} : () -> ()
      "func.func"() <{function_type = (!stream.binding, !stream.binding, index) -> (), sym_name = "simple_mul_inplace"}> ({
      ^bb0(%arg2: !stream.binding, %arg3: !stream.binding, %arg4: index):
        %5 = "arith.constant"() <{value = 0 : index}> : () -> index
        %6 = "stream.dispatch.workgroup.id"() <{dimension = 0 : index}> : () -> index
        %7 = "affine.apply"(%6) <{map = #map1}> : (index) -> index
        %8 = "stream.binding.subspan"(%arg2, %5, %arg4) : (!stream.binding, index, index) -> memref<?xf32>
        %9 = "stream.binding.subspan"(%arg3, %5, %arg4) : (!stream.binding, index, index) -> memref<?xf32>
        "func.call"(%8, %9, %arg4, %7) <{callee = @simple_mul_inplace_workgroup}> : (memref<?xf32>, memref<?xf32>, index, index) -> ()
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "stream.executable.end"() : () -> ()
  }) {hal.executable.objects = #hal.executable.objects<{#executable_target_embedded_elf_arm_64 = [#hal.executable.object<{path = "samples/custom_dispatch/cpu/embedded/functions_arm_64.o"}>], #executable_target_embedded_elf_x86_64 = [#hal.executable.object<{path = "samples/custom_dispatch/cpu/embedded/functions_x86_64.o"}>]}>} : () -> ()
  "func.func"() <{function_type = (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>, sym_name = "mixed_invocation"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.dim"(%arg0, %0) : (tensor<?xf32>, index) -> index
    %2 = "flow.dispatch"(%1, %arg0, %arg1, %1, %1, %1, %1) <{entry_points = [@executable::@simple_mul], operandSegmentSizes = array<i32: 1, 3, 2, 1>, tied_operands = [-1 : index]}> : (index, tensor<?xf32>, tensor<?xf32>, index, index, index, index) -> tensor<?xf32>
    %3 = "arith.addf"(%2, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    %4 = "flow.dispatch"(%1, %2, %3, %1, %1, %1, %1) <{entry_points = [@executable::@simple_mul_inplace], operandSegmentSizes = array<i32: 1, 3, 2, 1>, tied_operands = [1 : index]}> : (index, tensor<?xf32>, tensor<?xf32>, index, index, index, index) -> tensor<?xf32>
    "func.return"(%4) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_local]} : () -> ()

