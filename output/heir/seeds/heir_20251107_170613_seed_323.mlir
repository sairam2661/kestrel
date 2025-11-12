"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "rotate_and_insert"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "tensor_ext.rotate"(%arg0, %arg1) <{axis = 0}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    %1 = "arith.constant"() <{value = 99 : i32}> : () -> i32
    %2 = "tensor.extract"(%0, 2) : (tensor<4xi32>, index) -> i32
    %3 = "arith.cmpi"(%2, %1, "eq") : (i32, i32, i1) -> i1
    %4 = "arith.select"(%3, %1, %2) : (i1, i32, i32) -> i32
    %5 = "tensor.insert"(%4, %0, 2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()