"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<external>, index) -> !stream.resource<external>, sym_name = "FoldTensorImportOp", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<external>, %arg1: index):
    %0 = "arith.constant"() <{value = 20 : index}> : () -> index
    %1 = "stream.tensor.export"(%arg0, %arg1, %0) <{source_encoding = tensor<?x5xf32>}> : (!stream.resource<external>, index, index) -> !hal.buffer_view
    %2 = "stream.tensor.import"(%1, %arg1, %0) <{result_encoding = tensor<1x?x5xf32>}> : (!hal.buffer_view, index, index) -> !stream.resource<external>
    "util.return"(%2) : (!stream.resource<external>) -> ()
  }) : () -> ()
}) : () -> ()

