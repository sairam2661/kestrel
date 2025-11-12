"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?x3xi32>, index) -> !hal.buffer_view, sym_name = "tensorExportDynamic", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?x3xi32>, %arg1: index):
    %0 = "hal.tensor.export"(%arg0, %arg1) <{name = "goodbye", source_encoding = tensor<?x3xf32>}> : (tensor<?x3xi32>, index) -> !hal.buffer_view
    "util.return"(%0) : (!hal.buffer_view) -> ()
  }) : () -> ()
}) : () -> ()

