"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<8xi32>) -> i32, sym_name = "tensor_indexing"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<8xi32>):
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor.extract"(%arg1, %1) : (tensor<8xi32>, index) -> i32
    %3 = "arith.addi"(%arg0, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "tensor.extract"(%arg1, %4) : (tensor<8xi32>, index) -> i32
    %6 = "arith.subi"(%3, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "add_multiply"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()