"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, index) -> i32, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tensor.extract"(%arg0, %arg1) : (tensor<8xi32>, index) -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_flagless}> : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflow_flagless}> : (i32, i32) -> i32
    %5 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %6 = "arith.subi"(%4, %5) <{overflowFlags = #arith_overflow_flagless}> : (i32, i32) -> i32
    %7 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %8 = "arith.select"(%arg1, %6, %7) <{predicate = 0 : i64}> : (index, i32, i32) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()