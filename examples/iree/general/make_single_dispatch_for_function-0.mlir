"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<10x20xf32>, sym_name = "simple_test", tied_operands = [-1 : index]}> ({
    %0 = "tensor.empty"() : () -> tensor<10x20xf32>
    "util.return"(%0) : (tensor<10x20xf32>) -> ()
  }) : () -> ()
}) : () -> ()

