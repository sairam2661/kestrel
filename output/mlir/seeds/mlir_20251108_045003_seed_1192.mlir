"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4xi8>) -> (i32, tensor<4xi8>), sym_name = "modify_tensor"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 7 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "tensor.insert"(%0, %arg1, %1) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %3 = "arith.cmpi"(%arg0, %1) <{predicate = "slt"}> : (i32, index) -> i1
    %4 = "arith.select"(%3, %arg0, %1) : (i1, i32, index) -> index
    "func.return"(%arg0, %2) : (i32, tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()