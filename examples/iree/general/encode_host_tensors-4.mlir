"builtin.module"() ({
  "util.func"() <{function_type = () -> !stream.resource<constant>, sym_name = "denseTensorConstantI1", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "stream.tensor.constant"() <{result_encoding = tensor<4xi1>, value = dense<[true, true, false, true]> : tensor<4xi1>}> : () -> !stream.resource<constant>
    "util.return"(%0) : (!stream.resource<constant>) -> ()
  }) : () -> ()
}) : () -> ()

