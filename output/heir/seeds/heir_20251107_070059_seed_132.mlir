"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x32xi8>, tensor<128x32xi8>) -> tensor<128x32xi16>, sym_name = "tensor_add_and_multiply"}> ({
  ^bb0(%arg0: tensor<128x32xi8>, %arg1: tensor<128x32xi8>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128x32xi8>, tensor<128x32xi8>) -> tensor<128x32xi8>
    %1 = "arith.muli"(%0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128x32xi8>, tensor<128x32xi8>) -> tensor<128x32xi8>
    %2 = "arith.extsi"(%1) : (tensor<128x32xi8>) -> tensor<128x32xi16>
    "func.return"(%2) : (tensor<128x32xi16>) -> ()
  }) : () -> ()
}) : () -> ()