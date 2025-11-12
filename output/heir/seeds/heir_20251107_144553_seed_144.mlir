"builtin.module"() ({
  "func.func"() <{arg_attrs = [{shape.shape = [8]}, {shape.shape = [8]}], function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_tensor_ops"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %1 = "arith.muli"(%0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "arith.extsi"(%3) <{srcType = i32, dstType = i64}> : (i32) -> i64
    %5 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %7 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %8 = "arith.extsi"(%7) <{srcType = i32, dstType = i64}> : (i32) -> i64
    %9 = "arith.muli"(%6, %8) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    "func.return"(%0) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()