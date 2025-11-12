#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x8x48x32x3x96xbf16>, tensor<3x96x1x3x3x96xbf16>) -> (), sym_name = "expand_dest_forall_no_crash_issue_20736"}> ({
  ^bb0(%arg0: tensor<16x8x48x32x3x96xbf16>, %arg1: tensor<3x96x1x3x3x96xbf16>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x8x48x32x3x96xbf16>>
    %2 = "tensor.empty"() : () -> tensor<16x8x48x32x3x96xbf16>
    %3 = "scf.forall"(%2) <{mapping = [#iree_codegen.workgroup_mapping<z:2>, #iree_codegen.workgroup_mapping<z:1>, #iree_codegen.workgroup_mapping<z>, #iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 0, 0, 1>, staticLowerBound = array<i64: 0, 0, 0, 0, 0>, staticStep = array<i64: 1, 1, 16, 1, 32>, staticUpperBound = array<i64: 16, 8, 48, 3, 96>}> ({
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index, %arg6: index, %arg7: tensor<16x8x48x32x3x96xbf16>):
      %4 = "tensor.extract_slice"(%arg7, %arg2, %arg3, %arg4, %arg5, %arg6) <{operandSegmentSizes = array<i32: 1, 5, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, 0, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1, 16, 32, 1, 32>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (tensor<16x8x48x32x3x96xbf16>, index, index, index, index, index) -> tensor<1x1x16x32x1x32xbf16>
      %5 = "tensor.expand_shape"(%4) <{reassociation = [[0], [1], [2], [3, 4], [5], [6, 7]], static_output_shape = array<i64: 1, 1, 16, 2, 16, 1, 2, 16>}> : (tensor<1x1x16x32x1x32xbf16>) -> tensor<1x1x16x2x16x1x2x16xbf16>
      %6 = "util.optimization_barrier"(%5) : (tensor<1x1x16x2x16x1x2x16xbf16>) -> tensor<1x1x16x2x16x1x2x16xbf16>
      %7 = "tensor.collapse_shape"(%6) <{reassociation = [[0], [1], [2], [3, 4], [5], [6, 7]]}> : (tensor<1x1x16x2x16x1x2x16xbf16>) -> tensor<1x1x16x32x1x32xbf16>
      "scf.forall.in_parallel"() ({
        "tensor.parallel_insert_slice"(%7, %arg7, %arg2, %arg3, %arg4, %arg5, %arg6) <{operandSegmentSizes = array<i32: 1, 1, 5, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, 0, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1, 16, 32, 1, 32>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (tensor<1x1x16x32x1x32xbf16>, tensor<16x8x48x32x3x96xbf16>, index, index, index, index, index) -> ()
      }) : () -> ()
    }) : (tensor<16x8x48x32x3x96xbf16>) -> tensor<16x8x48x32x3x96xbf16>
    "iree_tensor_ext.dispatch.tensor.store"(%3, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 16, 8, 48, 32, 3, 96>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (tensor<16x8x48x32x3x96xbf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x8x48x32x3x96xbf16>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

