#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "masked_load_store"}> ({
    "hal.executable.variant"() <{sym_name = "cuda", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "masked_load_store", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "masked_load_store"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
          %2 = "arith.constant"() <{value = dense<0.000000e+00> : vector<1xf32>}> : () -> vector<1xf32>
          %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<64xf32, #gpu.address_space<global>>
          %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<64xf32, #gpu.address_space<global>>
          %5 = "vector.create_mask"(%1) : (index) -> vector<1xi1>
          %6 = "vector.maskedload"(%3, %1, %5, %2) : (memref<64xf32, #gpu.address_space<global>>, index, vector<1xi1>, vector<1xf32>) -> vector<1xf32>
          "vector.maskedstore"(%4, %1, %5, %6) : (memref<64xf32, #gpu.address_space<global>>, index, vector<1xi1>, vector<1xf32>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

