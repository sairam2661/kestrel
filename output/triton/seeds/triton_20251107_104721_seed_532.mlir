"builtin.module"() ({
  "tt.func"() <{function_type = () -> (tensor<128xi32>, tensor<128xi32>), sym_name = "complex_ops"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "tt.make_range"() <{end = 128 : i32, start = 64 : i32}> : () -> tensor<128xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflow}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.remsi"(%2, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.subi"(%0, %3) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.divsi"(%4, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.cmpi"(%5, %0) <{predicate = 2 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    "tt.return"(%2, %6) : (tensor<128xi32>, tensor<128xi1>) -> ()
  }) : () -> ()
}) : () -> ()