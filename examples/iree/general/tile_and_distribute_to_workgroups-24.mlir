#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64">
#pipeline_layout = #hal.pipeline.layout<constants = 5, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = CPUDefault>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "no_compute", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "embedded_elf_x86_64", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "no_compute", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index):
        %18:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg1, %arg2, %arg3, %arg4, %arg5) : (index, index, index, index, index) -> (index, index, index)
        "hal.return"(%18#0, %18#1, %18#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "no_compute"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
          %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
          %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
          %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
          %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> i32
          %6 = "arith.index_cast"(%1) : (i32) -> index
          %7 = "arith.index_cast"(%2) : (i32) -> index
          %8 = "arith.index_cast"(%3) : (i32) -> index
          %9 = "arith.index_cast"(%4) : (i32) -> index
          %10 = "arith.index_cast"(%5) : (i32) -> index
          %11 = "iree_tensor_ext.dispatch.workload.ordinal"(%6) <{ordinal = 0 : index}> : (index) -> index
          %12 = "iree_tensor_ext.dispatch.workload.ordinal"(%7) <{ordinal = 1 : index}> : (index) -> index
          %13 = "iree_tensor_ext.dispatch.workload.ordinal"(%8) <{ordinal = 2 : index}> : (index) -> index
          %14 = "iree_tensor_ext.dispatch.workload.ordinal"(%9) <{ordinal = 3 : index}> : (index) -> index
          %15 = "iree_tensor_ext.dispatch.workload.ordinal"(%10) <{ordinal = 4 : index}> : (index) -> index
          %16 = "hal.interface.binding.subspan"(%0, %11, %12, %13) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 3>}> : (index, index, index, index) -> memref<?x?x?xf32>
          %17 = "hal.interface.binding.subspan"(%0, %14, %15) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> memref<1x?x?xf32>
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

