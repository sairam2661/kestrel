"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<external>, index) -> !hal.buffer_view, sym_name = "tensorExport", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<external>, %arg1: index):
    %0 = "arith.constant"() <{value = 200 : index}> : () -> index
    %1 = "stream.tensor.export"(%arg0, %arg1, %0) <{source_encoding = tensor<?x1x10xf32>}> : (!stream.resource<external>, index, index) -> !hal.buffer_view
    "util.return"(%1) : (!hal.buffer_view) -> ()
  }) : () -> ()
}) : () -> ()

