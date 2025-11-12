#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "fold_dynamic_reshape_store"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %5 = "hal.interface.binding.subspan"(%1, %2) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> memref<?x?xf32, #hal.descriptor_type<storage_buffer>>
    %6 = "hal.interface.binding.subspan"(%3, %4) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> memref<?x?xf32, #hal.descriptor_type<storage_buffer>>
    %7 = "iree_codegen.load_from_buffer"(%5) : (memref<?x?xf32, #hal.descriptor_type<storage_buffer>>) -> tensor<?x?xf32>
    %8 = "util.optimization_barrier"(%7) : (tensor<?x?xf32>) -> tensor<?x?xf32>
    %9 = "tensor.collapse_shape"(%8) <{reassociation = [[0, 1]]}> : (tensor<?x?xf32>) -> tensor<?xf32>
    %10 = "tensor.expand_shape"(%9, %3, %4) <{reassociation = [[0, 1]], static_output_shape = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<?xf32>, index, index) -> tensor<?x?xf32>
    "iree_codegen.store_to_buffer"(%10, %6) : (tensor<?x?xf32>, memref<?x?xf32, #hal.descriptor_type<storage_buffer>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

