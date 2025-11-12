#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "load_from_buffer_read_only_copy"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<2x64xf32, #hal.descriptor_type<storage_buffer>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<128xf32, #hal.descriptor_type<storage_buffer>>
    %3 = "memref.collapse_shape"(%1) <{reassociation = [[0, 1]]}> : (memref<2x64xf32, #hal.descriptor_type<storage_buffer>>) -> memref<128xf32, #hal.descriptor_type<storage_buffer>>
    %4 = "iree_codegen.load_from_buffer"(%3) : (memref<128xf32, #hal.descriptor_type<storage_buffer>>) -> tensor<128xf32>
    %5 = "linalg.copy"(%4, %4) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      "linalg.yield"(%arg0) : (f32) -> ()
    }) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    "iree_codegen.store_to_buffer"(%5, %2) : (tensor<128xf32>, memref<128xf32, #hal.descriptor_type<storage_buffer>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

