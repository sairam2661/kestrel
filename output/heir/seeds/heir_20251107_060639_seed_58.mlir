"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (tensor<4x32xi32>, tensor<4x32xi32>) -> tensor<4x32xi32>, sym_name = "complex_permute_add"}> ({
  ^bb0(%arg0: tensor<4x32xi32>, %arg1: tensor<4x32xi32>):
    %layout = "tensor_ext.new_layout"() <{mapping = "{ [ct1, slot1] -> [ct2, slot2] : ct1 = ct2 and slot1 = slot2 and slot1 >= 0 and slot1 < 32 }"}> : () -> tensor<4x32xi32>
    %permuted0 = "tensor_ext.permute"(%arg0) <{permutation = #layout}> : (tensor<4x32xi32>) -> tensor<4x32xi32>
    %permuted1 = "tensor_ext.permute"(%arg1) <{permutation = #layout}> : (tensor<4x32xi32>) -> tensor<4x32xi32>
    %result = "arith.addi"(%permuted0, %permuted1) <{overflowFlags = #arith_overflow_NONE}> : (tensor<4x32xi32>, tensor<4x32xi32>) -> tensor<4x32xi32>
    "func.return"(%result) : (tensor<4x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()