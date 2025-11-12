"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>) -> tensor<2xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "tensor.extract"(%arg0, %0) : (tensor<2xi32>, i32) -> i32
    %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith_overflow_modeEnum}> : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "arith.muli"(%2, %3) : (i32, i32) -> i32
    %5 = "arith.cmpi"(%4, %3, "ge") : (i32, i32) -> i1
    %6 = "arith.select"(%5, %4, %1) : (i1, i32, i32) -> i32
    %7 = "arith.addi"(%6, %0) : (i32, i32) -> i32
    %8 = "tensor.insert"(%7, %arg0, %0) : (i32, tensor<2xi32>, i32) -> tensor<2xi32>
    "func.return"(%8) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()