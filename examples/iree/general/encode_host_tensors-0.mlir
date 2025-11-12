"builtin.module"() ({
  "util.func"() <{function_type = (index) -> index, sym_name = "denseTensorSizeOf", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "stream.tensor.sizeof"(%arg0) <{encoding = tensor<?x5xf32>}> : (index) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

