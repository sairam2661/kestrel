"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer, index, index) -> !stream.resource<external>, sym_name = "tensorImportBuffer", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer, %arg1: index, %arg2: index):
    %0 = "stream.tensor.import"(%arg0, %arg2, %arg1) <{result_encoding = tensor<?x5xf32>}> : (!hal.buffer, index, index) -> !stream.resource<external>
    "util.return"(%0) : (!stream.resource<external>) -> ()
  }) : () -> ()
}) : () -> ()

