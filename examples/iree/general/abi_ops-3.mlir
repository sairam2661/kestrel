"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?x?x4xf32>, index, index) -> !hal.buffer_view, sym_name = "exportBufferView", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?x?x4xf32>, %arg1: index, %arg2: index):
    %0 = "hal.tensor.export"(%arg0, %arg1, %arg2) <{source_encoding = tensor<?x?x4xf32>}> : (tensor<?x?x4xf32>, index, index) -> !hal.buffer_view
    "util.return"(%0) : (!hal.buffer_view) -> ()
  }) : () -> ()
}) : () -> ()

