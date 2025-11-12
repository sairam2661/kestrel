#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "complex"}> ({
    "hal.executable.variant"() <{sym_name = "cuda", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "complex", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "complex"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 128 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"(%1) <{binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<16xcomplex<f32>>
          %3 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xf32>
          %4 = "gpu.block_id"() <{dimension = #gpu<dim x>}> : () -> index
          %5 = "gpu.block_dim"() <{dimension = #gpu<dim x>}> : () -> index
          %6 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
          %7 = "arith.muli"(%4, %5) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          %8 = "arith.addi"(%7, %6) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
          %9 = "memref.load"(%2, %8) : (memref<16xcomplex<f32>>, index) -> complex<f32>
          %10 = "complex.re"(%9) <{fastmath = #arith.fastmath<none>}> : (complex<f32>) -> f32
          %11 = "complex.im"(%9) <{fastmath = #arith.fastmath<none>}> : (complex<f32>) -> f32
          %12 = "arith.addf"(%10, %11) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "memref.store"(%12, %3, %8) : (f32, memref<16xf32>, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

