#executable_target_embedded_elf_aarch64 = #hal.executable.target<"llvm-cpu", "embedded-elf-aarch64">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "single_specialization_executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant", sym_visibility = "public", target = #executable_target_embedded_elf_aarch64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "matmul_transpose_b_Dx1024x4096_f16xf16xf32", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device, %arg6: index):
        %18:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%18#0, %18#1, %18#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "matmul_transpose_b_Dx1024x4096_f16xf16xf32"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
          %3 = "arith.index_castui"(%2) : (i32) -> index
          %4 = "util.assume.int"(%3) <{assumptions = [[#util.int.assumption<umin = 256, umax = 1048320, udiv = 256>]]}> : (index) -> index
          %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x4096xf16>>
          %6 = "iree_tensor_ext.dispatch.workload.ordinal"(%4) <{ordinal = 0 : index}> : (index) -> index
          %7 = "hal.interface.binding.subspan"(%0, %6) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x4096xf16>>
          %8 = "hal.interface.binding.subspan"(%0, %6) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x1024xf32>>
          %9 = "iree_tensor_ext.dispatch.tensor.load"(%7, %6, %6) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 4096>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x4096xf16>>, index, index) -> tensor<?x4096xf16>
          %10 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1024, 4096>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x4096xf16>>) -> tensor<1024x4096xf16>
          %11 = "tensor.empty"(%6) : (index) -> tensor<?x1024xf32>
          %12 = "linalg.fill"(%1, %11) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg3: f32, %arg4: f32):
            "linalg.yield"(%arg3) : (f32) -> ()
          }) : (f32, tensor<?x1024xf32>) -> tensor<?x1024xf32>
          %13 = "linalg.matmul"(%9, %10, %12) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f16, %arg1: f16, %arg2: f32):
            %14 = "arith.extf"(%arg0) : (f16) -> f32
            %15 = "arith.extf"(%arg1) : (f16) -> f32
            %16 = "arith.mulf"(%14, %15) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %17 = "arith.addf"(%arg2, %16) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%17) : (f32) -> ()
          }) {iree_codegen.specialization_ranges = #util<int.assumption.multi_array[[<umin = 128, umax = 4096, udiv = 128>, <umin = 128, umax = 4096, udiv = 128>, <umin = 64, udiv = 64>], [<umin = 4096, udiv = 256>, <umin = 4096, udiv = 256>, <udiv = 64>]]>} : (tensor<?x4096xf16>, tensor<1024x4096xf16>, tensor<?x1024xf32>) -> tensor<?x1024xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%13, %8, %6, %6) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 1024>, static_strides = array<i64: 1, 1>}> : (tensor<?x1024xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x1024xf32>>, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

