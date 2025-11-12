#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "fold_reshape_load"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<3x3x1x96xf32, #hal.descriptor_type<storage_buffer>>
    %2 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<3x3x96xf32, #hal.descriptor_type<storage_buffer>>
    %3 = "iree_codegen.load_from_buffer"(%1) : (memref<3x3x1x96xf32, #hal.descriptor_type<storage_buffer>>) -> tensor<3x3x1x96xf32>
    %4 = "tensor.collapse_shape"(%3) <{reassociation = [[0, 1, 2, 3]]}> : (tensor<3x3x1x96xf32>) -> tensor<864xf32>
    %5 = "tensor.expand_shape"(%4) <{reassociation = [[0, 1, 2]], static_output_shape = array<i64: 3, 3, 96>}> : (tensor<864xf32>) -> tensor<3x3x96xf32>
    %6 = "util.optimization_barrier"(%5) : (tensor<3x3x96xf32>) -> tensor<3x3x96xf32>
    "iree_codegen.store_to_buffer"(%6, %2) : (tensor<3x3x96xf32>, memref<3x3x96xf32, #hal.descriptor_type<storage_buffer>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

