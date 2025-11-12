"builtin.module"() ({
  "util.func"() <{function_type = () -> index, sym_name = "denseTensorSizeOfStatic", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "stream.tensor.sizeof"() <{encoding = tensor<12xi4>}> : () -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

