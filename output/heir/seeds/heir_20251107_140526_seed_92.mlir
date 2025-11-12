"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, res_attrs = [{test.attr = 3 : i64}], sym_name = "tensor_op_test"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "tensor.insert"(%arg1, %arg0, 0) : (tensor<2xi32>, tensor<2xi32>, index) -> tensor<2xi32>
    %1 = "tensor.extract"(%0, 0) : (tensor<2xi32>, index) -> tensor<2xi32>
    %2 = "arith.addi"(%1, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %3 = "arith.muli"(%2, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %4 = "arith.select"(%arg0, %arg1, %3) : (tensor<2xi32>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%4) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()