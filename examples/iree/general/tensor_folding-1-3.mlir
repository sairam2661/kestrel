"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer_view, index) -> !hal.buffer_view, sym_name = "KeepTensorExportOpWithDifferingEncodings", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer_view, %arg1: index):
    %0 = "arith.constant"() <{value = 20 : index}> : () -> index
    %1 = "stream.tensor.import"(%arg0, %arg1, %0) <{result_encoding = tensor<?x5xf32>}> : (!hal.buffer_view, index, index) -> !stream.resource<external>
    %2 = "stream.tensor.export"(%1, %arg1, %0) <{source_encoding = tensor<1x?x5xf32>}> : (!stream.resource<external>, index, index) -> !hal.buffer_view
    "util.return"(%2) : (!hal.buffer_view) -> ()
  }) : () -> ()
}) : () -> ()

