"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi8>, i32) -> tensor<16xi8>, sym_name = "rotate_and_modify"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<16xi8>, i32) -> tensor<16xi8>
    %3 = "tensor_ext.rotate"(%2, %1) : (tensor<16xi8>, i32) -> tensor<16xi8>
    %4 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %5 = "arith.addi"(%4, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %6 = "arith.cmpi"(%arg1, %5) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %7 = "arith.select"(%6, %arg0, %3) : (i1, tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
    "func.return"(%7) : (tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()