#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> i4, sym_name = "memref_load_2d_i4"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<16x32xi4>
    %3 = "memref.load"(%2, %1, %0) : (memref<16x32xi4>, index, index) -> i4
    "func.return"(%3) : (i4) -> ()
  }) : () -> ()
}) : () -> ()

