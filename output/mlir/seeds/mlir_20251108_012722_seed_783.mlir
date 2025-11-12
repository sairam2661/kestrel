"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, index) -> (index, index), sym_name = "tensor_dim_mixed"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.dim"(%arg0, %0) : (tensor<?xi32>, index) -> index
    %3 = "tensor.dim"(%arg0, %1) : (tensor<?xi32>, index) -> index
    %4 = "arith.addi"(%2, %1) : (index, index) -> index
    %5 = "arith.subi"(%3, %1) : (index, index) -> index
    "func.return"(%4, %5) : (index, index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "bitwise_xor_shift"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %2 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.shli"(%2, %1) : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()