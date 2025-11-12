"builtin.module"() ({
  "func.func"() <{arg_attrs = [{foo.bar}], function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_mixer"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %1 = "arith.cmpi"(%arg0, %arg1, "eq") <{predicate = "eq"}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %2 = "arith.select"(%1, %0, %arg0) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "arith.muli"(%2, %2) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%3) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()