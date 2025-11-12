"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer, index) -> !hal.buffer_view, sym_name = "NofoldTensorExportOpBufferToView", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer, %arg1: index):
    %0 = "arith.constant"() <{value = 20 : index}> : () -> index
    %1 = "stream.tensor.import"(%arg0, %arg1, %0) <{result_encoding = tensor<?x5xf32>}> : (!hal.buffer, index, index) -> !stream.resource<external>
    %2 = "stream.tensor.export"(%1, %arg1, %0) <{source_encoding = tensor<?x5xf32>}> : (!stream.resource<external>, index, index) -> !hal.buffer_view
    "util.return"(%2) : (!hal.buffer_view) -> ()
  }) : () -> ()
}) : () -> ()

