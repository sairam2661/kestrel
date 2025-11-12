"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_addition"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow} > : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%0) : (tensor<3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_subtraction"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow} > : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%0) : (tensor<3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_multiplication"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow} > : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%0) : (tensor<3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_division"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflow} > : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%0) : (tensor<3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_modulo"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.remsi"(%arg0, %arg1) <{overflowFlags = #arith_overflow} > : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%0) : (tensor<3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_bitwise_and"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.andi"(%arg0, %arg1) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%0) : (tensor<3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_bitwise_or"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.ori"(%arg0, %arg1) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%0) : (tensor<3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_bitwise_xor"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%0) : (tensor<3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_bitwise_negation"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%0) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()