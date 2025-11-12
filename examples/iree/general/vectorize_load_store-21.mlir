#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> complex<f32>, sym_name = "complex_memref"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<8x32xcomplex<f32>>
    %1 = "memref.load"(%0, %arg0, %arg1) : (memref<8x32xcomplex<f32>>, index, index) -> complex<f32>
    "func.return"(%1) : (complex<f32>) -> ()
  }) : () -> ()
}) : () -> ()

