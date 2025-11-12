#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "check_not_readonly"}> ({
    "hal.executable.variant"() <{sym_name = "cuda", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "check_not_readonly", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "check_not_readonly"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 128 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xi32>
          %3 = "hal.interface.binding.subspan"(%1) <{binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<16xf32, strided<[1], offset: ?>>
          %4 = "hal.interface.binding.subspan"() <{binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xi32>
          %5 = "hal.interface.binding.subspan"(%1) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<16xf32, strided<[1], offset: ?>>
          %6 = "hal.interface.binding.subspan"() <{binding = 2 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xi32>
          %7 = "hal.interface.binding.subspan"(%1) <{binding = 2 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<16xf32, strided<[1], offset: ?>>
          %8 = "hal.interface.binding.subspan"() <{binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xf32>
          %9 = "gpu.block_id"() <{dimension = #gpu<dim x>}> : () -> index
          %10 = "gpu.block_dim"() <{dimension = #gpu<dim x>}> : () -> index
          %11 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
          %12 = "arith.muli"(%9, %10) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          %13 = "arith.addi"(%12, %11) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          %14 = "memref.load"(%3, %13) : (memref<16xf32, strided<[1], offset: ?>>, index) -> f32
          %15 = "memref.load"(%2, %13) : (memref<16xi32>, index) -> i32
          %16 = "arith.sitofp"(%15) : (i32) -> f32
          %17 = "arith.addf"(%14, %16) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "memref.store"(%17, %8, %13) : (f32, memref<16xf32>, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

