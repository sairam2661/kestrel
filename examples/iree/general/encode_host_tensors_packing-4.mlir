"builtin.module"() ({
  "util.func"() <{function_type = () -> !stream.resource<constant>, sym_name = "denseTensorConstantI8", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "stream.tensor.constant"() <{result_encoding = tensor<8xi8>, value = dense<[5, 15, 0, 3, 1, 7, 8, 4]> : tensor<8xi8>}> : () -> !stream.resource<constant>
    "util.return"(%0) : (!stream.resource<constant>) -> ()
  }) : () -> ()
}) : () -> ()

