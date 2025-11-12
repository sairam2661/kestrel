"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %cst = "arith.constant"() <{value = 0 : index}> : () -> index
    %extract0 = "tensor.extract"(%arg0, %cst, %cst) : (tensor<4x4xi32>, index, index) -> i32
    %extract1 = "tensor.extract"(%arg1, %cst, %cst) : (tensor<4x4xi32>, index, index) -> i32
    %cmp = "arith.cmpi"(%extract0, %extract1, "eq") : (i32, i32) -> i1
    %select = "arith.select"(%cmp, %extract0, %extract1) : (i1, i32, i32) -> i32
    %insert = "tensor.insert"(%select, %arg0, %cst, %cst) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
    "func.return"(%insert) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()