#executable_target_embedded_elf_aarch64 = #hal.executable.target<"llvm-cpu", "embedded-elf-aarch64">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "static_never_applies_udiv", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant", sym_visibility = "public", target = #executable_target_embedded_elf_aarch64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "fill_4xf32", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device, %arg3: index, %arg4: index):
        %5:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%5#0, %5#1, %5#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "fill_4xf32"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4xf32>>
          %3 = "tensor.empty"() : () -> tensor<4xf32>
          %4 = "linalg.fill"(%1, %3) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32):
            "linalg.yield"(%arg0) : (f32) -> ()
          }) {iree_codegen.specialization_ranges = #util<int.assumption.multi_array[[<udiv = 256>]]>} : (f32, tensor<4xf32>) -> tensor<4xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%4, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 4>, static_strides = array<i64: 1>}> : (tensor<4xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

