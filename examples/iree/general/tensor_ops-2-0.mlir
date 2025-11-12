"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer_view, index) -> !stream.resource<external>, sym_name = "tensorImport", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer_view, %arg1: index):
    %0 = "arith.constant"() <{value = 20 : index}> : () -> index
    %1 = "stream.tensor.import"(%arg0, %arg1, %0) <{result_encoding = tensor<?x5xf32>}> : (!hal.buffer_view, index, index) -> !stream.resource<external>
    "util.return"(%1) : (!stream.resource<external>) -> ()
  }) : () -> ()
}) : () -> ()

