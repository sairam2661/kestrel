#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "bf16_conversion"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0, %1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xbf16, #spirv.storage_class<StorageBuffer>>
    %3 = "hal.interface.binding.subspan"(%0, %1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xbf16, #spirv.storage_class<StorageBuffer>>
    %4 = "hal.interface.binding.subspan"(%0, %1) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xbf16, #spirv.storage_class<StorageBuffer>>
    %5 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
    %6 = "gpu.block_dim"() <{dimension = #gpu<dim x>}> : () -> index
    "scf.for"(%5, %1, %6) ({
    ^bb0(%arg0: index):
      %7 = "memref.load"(%2, %arg0) : (memref<?xbf16, #spirv.storage_class<StorageBuffer>>, index) -> bf16
      %8 = "memref.load"(%3, %arg0) : (memref<?xbf16, #spirv.storage_class<StorageBuffer>>, index) -> bf16
      %9 = "arith.extf"(%7) : (bf16) -> f32
      %10 = "arith.extf"(%8) : (bf16) -> f32
      %11 = "arith.addf"(%9, %10) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %12 = "arith.truncf"(%11) : (f32) -> bf16
      "memref.store"(%12, %4, %arg0) : (bf16, memref<?xbf16, #spirv.storage_class<StorageBuffer>>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

