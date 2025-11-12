#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> i4, sym_name = "memref_i4_to_i8_dynamic"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%arg0, %arg1, %arg2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> memref<?x?xi4, strided<[?, 1], offset: ?>>
    %2 = "memref.load"(%1, %0, %0) : (memref<?x?xi4, strided<[?, 1], offset: ?>>, index, index) -> i4
    "func.return"(%2) : (i4) -> ()
  }) : () -> ()
}) : () -> ()

