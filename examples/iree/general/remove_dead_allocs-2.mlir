#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "cleanup_only_assume_alignment_uses"}> ({
    %0 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<42xf32>
    %1 = "memref.assume_alignment"(%0) <{alignment = 64 : i32}> : (memref<42xf32>) -> memref<42xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

