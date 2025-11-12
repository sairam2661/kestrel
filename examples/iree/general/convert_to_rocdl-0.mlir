#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "abs_ex_dispatch_0"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"() <{binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xf32>
    %2 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xf32>
    %3 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xf32>
    %4 = "gpu.block_id"() <{dimension = #gpu<dim x>}> : () -> index
    %5 = "gpu.block_dim"() <{dimension = #gpu<dim x>}> : () -> index
    %6 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
    %7 = "arith.muli"(%4, %5) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %8 = "arith.addi"(%7, %6) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %9 = "memref.load"(%2, %8) : (memref<16xf32>, index) -> f32
    %10 = "memref.load"(%3, %8) : (memref<16xf32>, index) -> f32
    %11 = "arith.addf"(%9, %10) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "memref.store"(%11, %1, %8) : (f32, memref<16xf32>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

