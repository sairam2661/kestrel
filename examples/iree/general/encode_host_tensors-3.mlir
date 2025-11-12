"builtin.module"() ({
  "util.func"() <{function_type = (index) -> !stream.resource<constant>, sym_name = "denseTensorConstant", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "stream.tensor.constant"(%arg0) <{result_encoding = tensor<?x5x64xf32>, value = dense<0.000000e+00> : tensor<1x5x64xf32>}> : (index) -> !stream.resource<constant>
    "util.return"(%0) : (!stream.resource<constant>) -> ()
  }) : () -> ()
}) : () -> ()

