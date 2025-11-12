"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>, i32) -> tensor<128xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>, %arg2: i32):
    %0 = "arith.constant"() <{value = 256 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "arith.divsi"(%arg2, %1) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %5 = "arith.select"(%4, %arg0, %arg1) : (i1, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.muli"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %8 = "arith.subi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %9 = "arith.remsi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %10 = "arith.xori"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%10) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()