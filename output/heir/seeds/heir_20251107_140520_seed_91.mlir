"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi16>, tensor<3xi16>) -> tensor<2xi16>, sym_name = "tensor_mani"}> ({
  ^bb0(%arg0: tensor<2xi16>, %arg1: tensor<3xi16>):
    %0 = "tensor.insert"(%arg1, %arg0, 0) : (tensor<3xi16>, tensor<2xi16>, index) -> tensor<2xi16>
    %1 = "tensor.extract"(%0, 0) : (tensor<2xi16>, index) -> i16
    %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %3 = "tensor.insert"(%2, %0, 1) : (i16, tensor<2xi16>, index) -> tensor<2xi16>
    "func.return"(%3) : (tensor<2xi16>) -> ()
  }) : () -> ()
}) : () -> ()