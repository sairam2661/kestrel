#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "to_global"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 256 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<256xi32, strided<[1], offset: ?>, #hal.descriptor_type<storage_buffer>>
    "memref.store"(%0, %3, %1) : (i32, memref<256xi32, strided<[1], offset: ?>, #hal.descriptor_type<storage_buffer>>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

