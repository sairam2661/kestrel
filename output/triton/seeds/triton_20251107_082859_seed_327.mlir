"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x4xi32>, tensor<8x4xi32>) -> tensor<8x4xi32>, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<8x4xi32>, %arg1: tensor<8x4xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.cmpi"(%arg0, %arg1) <{predicate = 5 : i64}> : (tensor<8x4xi32>, tensor<8x4xi32>) -> tensor<8x4xi1>
    %3 = "arith.select"(%2, %arg0, %arg1) : (tensor<8x4xi1>, tensor<8x4xi32>, tensor<8x4xi32>) -> tensor<8x4xi32>
    %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}>: (tensor<8x4xi32>, tensor<8x4xi32>) -> tensor<8x4xi32>
    %5 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}>: (tensor<8x4xi32>, tensor<8x4xi32>) -> tensor<8x4xi32>
    %6 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow}>: (tensor<8x4xi32>, tensor<8x4xi32>) -> tensor<8x4xi32>
    %7 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}>: (tensor<8x4xi32>, tensor<8x4xi32>) -> tensor<8x4xi32>
    %8 = "arith.xori"(%arg0, %arg1) : (tensor<8x4xi32>, tensor<8x4xi32>) -> tensor<8x4xi32>
    "tt.return"(%8) : (tensor<8x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()