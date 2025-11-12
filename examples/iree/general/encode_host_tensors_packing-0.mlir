"builtin.module"() ({
  "util.func"() <{function_type = () -> !stream.resource<constant>, sym_name = "denseTensorConstantI2", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "stream.tensor.constant"() <{result_encoding = tensor<16xi2>, value = dense<[0, 1, -2, -1, 0, 1, -2, -1, 0, 1, -2, -1, 0, 1, -2, -1]> : tensor<16xi2>}> : () -> !stream.resource<constant>
    "util.return"(%0) : (!stream.resource<constant>) -> ()
  }) : () -> ()
}) : () -> ()

