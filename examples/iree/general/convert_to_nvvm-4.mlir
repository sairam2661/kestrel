#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "shared_memory_lowering"}> ({
    "hal.executable.variant"() <{sym_name = "cuda", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "shared_memory_lowering", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "shared_memory_lowering"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = dense<0.000000e+00> : vector<4xf32>}> : () -> vector<4xf32>
          %2 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x16x32xf32, #gpu.address_space<workgroup>>
          %3 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x32x16xf32, #gpu.address_space<workgroup>>
          %4 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x8x16xf32, #gpu.address_space<workgroup>>
          "vector.store"(%1, %3, %0, %0, %0) : (vector<4xf32>, memref<1x32x16xf32, #gpu.address_space<workgroup>>, index, index, index) -> ()
          "vector.store"(%1, %4, %0, %0, %0) : (vector<4xf32>, memref<1x8x16xf32, #gpu.address_space<workgroup>>, index, index, index) -> ()
          "vector.store"(%1, %2, %0, %0, %0) : (vector<4xf32>, memref<1x16x32xf32, #gpu.address_space<workgroup>>, index, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

