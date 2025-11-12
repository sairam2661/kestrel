"builtin.module"() ({
  "util.func"() <{function_type = () -> !stream.resource<constant>, sym_name = "TensorConstantToSplat", sym_visibility = "private", tied_operands = [-1 : index]}> ({
    %0 = "stream.tensor.constant"() <{result_encoding = tensor<2x2xf32>, value = dense<1.000000e+00> : tensor<2x2xf32>}> : () -> !stream.resource<constant>
    "util.return"(%0) : (!stream.resource<constant>) -> ()
  }) : () -> ()
}) : () -> ()

