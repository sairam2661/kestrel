"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_range_op"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "arith.cmpi"(%3, %0) <{predicate = 5 : i64}> : (i32, tensor<128xi32>) -> i1
    %5 = "arith.select"(%4, %2, %0) : (i1, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%5) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()