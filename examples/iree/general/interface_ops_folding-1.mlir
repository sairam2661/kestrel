#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">], flags = Indirect>
"builtin.module"() ({
  "util.func"() <{function_type = () -> index, sym_name = "hal_interface_binding_subspan_op_and_assume_alignment", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64xf16>
    %2 = "memref.dim"(%1, %0) : (memref<64xf16>, index) -> index
    "util.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

