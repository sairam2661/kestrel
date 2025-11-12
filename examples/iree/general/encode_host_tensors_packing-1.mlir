"builtin.module"() ({
  "util.func"() <{function_type = () -> !stream.resource<constant>, sym_name = "denseTensorConstantI3", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "stream.tensor.constant"() <{result_encoding = tensor<4xi3>, value = dense<[0, -1, 2, -3]> : tensor<4xi3>}> : () -> !stream.resource<constant>
    "util.return"(%0) : (!stream.resource<constant>) -> ()
  }) : () -> ()
}) : () -> ()

