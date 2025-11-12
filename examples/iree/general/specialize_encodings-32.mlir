#encoding = #iree_encoding.unknown
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "util.global"() <{sym_name = "device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "hal.executable.source"() <{sym_name = "executable", sym_visibility = "public"}> ({
    "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch", sym_visibility = "public"}> ({
    }, {
    }) : () -> ()
    "hal.executable.source_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.resource<*>, index, index) -> !stream.resource<*>, sym_name = "dispatch_hal_executable_with_encodings", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<*>, %arg1: index, %arg2: index):
    %0 = "stream.tensor.dispatch"(%arg0, %arg1, %arg2, %arg1, %arg2) <{affinity = #hal.device.affinity<@device>, entry_points = [@executable::@dispatch], operandSegmentSizes = array<i32: 0, 1, 1, 1, 1, 1>, operand_encodings = [tensor<4x?xf32, #encoding>], result_encodings = [tensor<4x?xf32, #encoding>], tied_operands = [-1 : index]}> : (!stream.resource<*>, index, index, index, index) -> !stream.resource<*>
    "util.return"(%0) : (!stream.resource<*>) -> ()
  }) : () -> ()
}) : () -> ()

