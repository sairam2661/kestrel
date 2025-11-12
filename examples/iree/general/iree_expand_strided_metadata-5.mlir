#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (memref<index>, index, index, index, index, index), sym_name = "resolve_binding_subspan_dyn_dims_memref"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0, %arg0, %arg1) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> memref<?x?xindex>
    %2:6 = "memref.extract_strided_metadata"(%1) : (memref<?x?xindex>) -> (memref<index>, index, index, index, index, index)
    "func.return"(%2#0, %2#1, %2#2, %2#3, %2#4, %2#5) : (memref<index>, index, index, index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

