"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<external>, index, index) -> !hal.buffer_view, sym_name = "tensorExportBufferView", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<external>, %arg1: index, %arg2: index):
    %0 = "stream.tensor.export"(%arg0, %arg2, %arg1) <{source_encoding = tensor<?x1x10xf32>}> : (!stream.resource<external>, index, index) -> !hal.buffer_view
    "util.return"(%0) : (!hal.buffer_view) -> ()
  }) : () -> ()
}) : () -> ()

