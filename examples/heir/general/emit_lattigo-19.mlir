"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<8xi32>, sym_name = "empty"}> ({
    %0 = "tensor.empty"() : () -> tensor<8xi32>
    "func.return"(%0) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) {scheme.bgv} : () -> ()

