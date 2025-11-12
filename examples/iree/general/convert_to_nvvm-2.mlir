#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "dead_symbol"}> ({
    "hal.executable.variant"() <{sym_name = "cuda", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "dead_symbol", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dead_symbol"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 128 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xi32>
          %3 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xf32>
          %4 = "gpu.block_id"() <{dimension = #gpu<dim x>}> : () -> index
          %5 = "gpu.block_dim"() <{dimension = #gpu<dim x>}> : () -> index
          %6 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
          %7 = "arith.muli"(%4, %5) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          %8 = "arith.addi"(%7, %6) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          %9 = "memref.load"(%2, %8) : (memref<16xi32>, index) -> i32
          %10 = "arith.sitofp"(%9) : (i32) -> f32
          %11 = "arith.addf"(%10, %10) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "memref.store"(%11, %3, %8) : (f32, memref<16xf32>, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

