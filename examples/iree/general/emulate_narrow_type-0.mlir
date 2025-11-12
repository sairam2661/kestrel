#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> i4, sym_name = "memref_i4_to_i8"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<3x15xi4>
    %2 = "memref.load"(%1, %0, %0) : (memref<3x15xi4>, index, index) -> i4
    "func.return"(%2) : (i4) -> ()
  }) : () -> ()
}) : () -> ()

