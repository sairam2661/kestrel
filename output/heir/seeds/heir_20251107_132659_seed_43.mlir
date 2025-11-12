"builtin.module"() ({
  "func.func"() <{arg_attrs = [{shape.shape = [100]}, {shape.shape = [100]}], function_type = (tensor<100xi32>, tensor<100xi32>) -> tensor<100xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<100xi32>, %arg1: tensor<100xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<100xi32>, tensor<100xi32>) -> tensor<100xi32>
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<100xi32>, tensor<100xi32>) -> tensor<100xi32>
    %2 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<100xi32>, tensor<100xi32>) -> tensor<100xi32>
    %3 = "scf.for"(%c0 : index) ({
    ^bb1(%iv: index):
      "arith.addi"(%iv, %c1) <{overflowFlags = #arith_overflownone}> : (index, index) -> index
      %4 = "scf.yield"(%iv) : (index) -> index
    }) {"(%c0 = #0, %c1 = #1)"  ={},  nderivs = 1,  nderivs = 1} : (index, index) -> index
    "func.return"(%2) : (tensor<100xi32>) -> ()
  }) : () -> ()
}) : () -> ()