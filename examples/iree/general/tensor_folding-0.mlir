"builtin.module"() ({
  "util.func"() <{function_type = () -> (tensor<2x4xi32>, index, index), sym_name = "expandStaticShapeConstant", sym_visibility = "public", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "flow.tensor.constant"() <{value = dense<2> : tensor<2x4xi32>}> : () -> tensor<2x4xi32>
    %3 = "tensor.dim"(%2, %0) : (tensor<2x4xi32>, index) -> index
    %4 = "tensor.dim"(%2, %1) : (tensor<2x4xi32>, index) -> index
    "util.return"(%2, %3, %4) : (tensor<2x4xi32>, index, index) -> ()
  }) : () -> ()
}) : () -> ()

