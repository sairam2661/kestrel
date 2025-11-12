"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>) -> tensor<16xi32>, sym_name = "mixed_arith_ops"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.muli"(%arg0, %1) : (i32, i32) -> i32
    %4 = "arith.remsi"(%arg0, %1) : (i32, i32) -> i32
    %5 = "arith.xori"(%arg0, %1) : (i32, i32) -> i32
    %6 = "arith.select"(%arg0, %2, %3) <{predicate = 1 : i64}> : (i32, i32, i32) -> i32
    %7 = "tt.make_range"() <{start = 0 : i32, end = 16 : i32}> : () -> tensor<16xi32>
    %8 = "arith.cmpi"(%7, %arg1) <{predicate = 0 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %9 = "arith.addi"(%7, %arg0) : (tensor<16xi32>, i32) -> tensor<16xi32>
    %10 = "tt.return"(%9) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()