"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<128xi1>, sym_name = "dontfoldtensor"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "tt.make_range"() <{end = 257 : i32, start = 129 : i32}> : () -> tensor<128xi32>
    %2 = "arith.cmpi"(%1, %0) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    "tt.return"(%2) : (tensor<128xi1>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()

