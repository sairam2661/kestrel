"builtin.module"() ({
  "util.func"() <{function_type = () -> index, sym_name = "tensorSizeOfUnalignedPackedI1", tied_operands = [-1 : index]}> ({
    %0 = "stream.tensor.sizeof"() <{encoding = tensor<12xi1>}> : () -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

