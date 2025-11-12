#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 32 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<()[s0] -> (s0 ceildiv 64)>
#map1 = affine_map<()[s0] -> (s0 * 64)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
#pipeline_layout1 = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
"builtin.module"() <{sym_name = "example"}> ({
  "hal.executable"() <{sym_name = "executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{objects = [#hal.executable.object<{path = "samples/custom_dispatch/cpu/embedded/functions_x86_64.o"}>], sym_name = "x86_64", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "simple_mul", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device, %arg5: index):
        %23 = "affine.apply"(%arg5) <{map = #map}> : (index) -> index
        %24 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%23, %24, %24) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout1, ordinal = 1 : index, sym_name = "simple_mul_inplace", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device, %arg3: index):
        %21 = "affine.apply"(%arg3) <{map = #map}> : (index) -> index
        %22 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%21, %22, %22) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = (memref<?xf32>, memref<?xf32>, memref<?xf32>, index, index) -> (), sym_name = "simple_mul_workgroup", sym_visibility = "private"}> ({
        }) {hal.import.static} : () -> ()
        "func.func"() <{function_type = () -> (), sym_name = "simple_mul"}> ({
          %13 = "arith.constant"() <{value = 0 : index}> : () -> index
          %14 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
          %15 = "arith.index_castui"(%14) : (i32) -> index
          %16 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
          %17 = "affine.apply"(%16) <{map = #map1}> : (index) -> index
          %18 = "hal.interface.binding.subspan"(%13, %15) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xf32>
          %19 = "hal.interface.binding.subspan"(%13, %15) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xf32>
          %20 = "hal.interface.binding.subspan"(%13, %15) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xf32>
          "func.call"(%18, %19, %20, %15, %17) <{callee = @simple_mul_workgroup}> : (memref<?xf32>, memref<?xf32>, memref<?xf32>, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
        "func.func"() <{function_type = (memref<?xf32>, memref<?xf32>, index, index) -> (), sym_name = "simple_mul_inplace_workgroup", sym_visibility = "private"}> ({
        }) {hal.import.static} : () -> ()
        "func.func"() <{function_type = () -> (), sym_name = "simple_mul_inplace"}> ({
          %6 = "arith.constant"() <{value = 0 : index}> : () -> index
          %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout1, ordinal = 0 : index}> : () -> i32
          %8 = "arith.index_castui"(%7) : (i32) -> index
          %9 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
          %10 = "affine.apply"(%9) <{map = #map1}> : (index) -> index
          %11 = "hal.interface.binding.subspan"(%6, %8) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout1, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xf32>
          %12 = "hal.interface.binding.subspan"(%6, %8) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout1, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xf32>
          "func.call"(%11, %12, %8, %10) <{callee = @simple_mul_inplace_workgroup}> : (memref<?xf32>, memref<?xf32>, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>, sym_name = "mixed_invocation"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.dim"(%arg0, %0) : (tensor<?xf32>, index) -> index
    %2 = "arith.index_cast"(%1) : (index) -> i32
    %3 = "flow.dispatch"(%1, %2, %arg0, %arg1, %1, %1, %1) <{entry_points = [@executable::@x86_64::@simple_mul], operandSegmentSizes = array<i32: 1, 3, 2, 1>, tied_operands = [-1 : index]}> {hal.executable.ref = [@executable]} : (index, i32, tensor<?xf32>, tensor<?xf32>, index, index, index) -> tensor<?xf32>
    %4 = "arith.addf"(%3, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    %5 = "flow.dispatch"(%1, %2, %3, %4, %1, %1, %1) <{entry_points = [@executable::@x86_64::@simple_mul_inplace], operandSegmentSizes = array<i32: 1, 3, 2, 1>, tied_operands = [2 : index]}> : (index, i32, tensor<?xf32>, tensor<?xf32>, index, index, index) -> tensor<?xf32>
    "func.return"(%5) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_local]} : () -> ()

