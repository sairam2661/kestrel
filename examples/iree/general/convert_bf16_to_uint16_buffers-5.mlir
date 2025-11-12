#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = CPUDefault>
"builtin.module"() <{sym_name = "extract_strided_metadata"}> ({
  "func.func"() <{function_type = (memref<bf16>, index) -> (), sym_name = "external_func", sym_visibility = "private"}> ({
  }) {llvm.bareptr = [true]} : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "external_func_entry_point"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %1 = "arith.index_castui"(%0) : (i32) -> index
    %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<1x8x768xbf16, strided<[6144, 768, 1], offset: ?>>
    %3:8 = "iree_codegen.extract_strided_metadata"(%2) : (memref<1x8x768xbf16, strided<[6144, 768, 1], offset: ?>>) -> (memref<bf16>, index, index, index, index, index, index, index)
    "func.call"(%3#0, %3#1) <{callee = @external_func}> : (memref<bf16>, index) -> ()
    "func.return"() : () -> ()
  }) {translation_info = #translation} : () -> ()
}) : () -> ()

