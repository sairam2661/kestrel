"builtin.module"() ({
  "util.func"() <{function_type = (tensor<1xf16>) -> tensor<1xf16>, sym_name = "ElideIntermediateTransferTwoTransfers", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<1xf16>):
    %0 = "flow.tensor.transfer"(%arg0) <{target = "target1"}> : (tensor<1xf16>) -> tensor<1xf16>
    %1 = "flow.tensor.transfer"(%0) <{target = "target2"}> : (tensor<1xf16>) -> tensor<1xf16>
    "util.return"(%1) : (tensor<1xf16>) -> ()
  }) : () -> ()
}) : () -> ()

