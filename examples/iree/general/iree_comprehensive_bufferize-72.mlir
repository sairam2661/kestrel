#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "load_from_buffer_store_to_buffer_in_place"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<128x384xf32, #hal.descriptor_type<storage_buffer>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<128x384xf32, #hal.descriptor_type<storage_buffer>>
    %3 = "iree_codegen.load_from_buffer"(%1) : (memref<128x384xf32, #hal.descriptor_type<storage_buffer>>) -> tensor<128x384xf32>
    %4 = "iree_codegen.load_from_buffer"(%2) : (memref<128x384xf32, #hal.descriptor_type<storage_buffer>>) -> tensor<128x384xf32>
    %5 = "scf.forall"(%4) <{mapping = [#iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 0, 0, 1>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: 128>}> ({
    ^bb0(%arg0: index, %arg1: tensor<128x384xf32>):
      %6 = "tensor.extract_slice"(%3, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: 1, 384>, static_strides = array<i64: 1, 1>}> : (tensor<128x384xf32>, index) -> tensor<384xf32>
      %7 = "tensor.extract_slice"(%arg1, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: 1, 384>, static_strides = array<i64: 1, 1>}> : (tensor<128x384xf32>, index) -> tensor<384xf32>
      %8 = "linalg.copy"(%6, %7) <{operandSegmentSizes = array<i32: 1, 1>}> ({
      ^bb0(%arg2: f32, %arg3: f32):
        "linalg.yield"(%arg2) : (f32) -> ()
      }) : (tensor<384xf32>, tensor<384xf32>) -> tensor<384xf32>
      "scf.forall.in_parallel"() ({
        "tensor.parallel_insert_slice"(%8, %arg1, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: 1, 384>, static_strides = array<i64: 1, 1>}> : (tensor<384xf32>, tensor<128x384xf32>, index) -> ()
      }) : () -> ()
    }) : (tensor<128x384xf32>) -> tensor<128x384xf32>
    "iree_codegen.store_to_buffer"(%5, %2) : (tensor<128x384xf32>, memref<128x384xf32, #hal.descriptor_type<storage_buffer>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

