#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "mixed_type"}> ({
    "hal.executable.variant"() <{sym_name = "cuda", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "mixed_type", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "mixed_type"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 128 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"(%1) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<16xf32, strided<[1], offset: ?>>
          %3 = "hal.interface.binding.subspan"(%0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<16xi32>
          %4 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xf32>
          %5 = "gpu.block_id"() <{dimension = #gpu<dim x>}> : () -> index
          %6 = "gpu.block_dim"() <{dimension = #gpu<dim x>}> : () -> index
          %7 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
          %8 = "arith.muli"(%5, %6) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          %9 = "arith.addi"(%8, %7) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          %10 = "memref.load"(%2, %9) : (memref<16xf32, strided<[1], offset: ?>>, index) -> f32
          %11 = "memref.load"(%3, %9) : (memref<16xi32>, index) -> i32
          %12 = "arith.sitofp"(%11) : (i32) -> f32
          %13 = "arith.addf"(%10, %12) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "memref.store"(%13, %4, %9) : (f32, memref<16xf32>, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

