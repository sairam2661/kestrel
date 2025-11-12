"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>, sym_name = "complex_cmp"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %1 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> !ttg_ptr
    %2 = "arith.constant"() <{value = dense<42> : tensor<64xi32>}> : () -> tensor<64xi32>
    %3 = "arith.cmpi"(%2, %arg1) <{predicate = 2 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %4 = "arith.andi"(%0, %3) <{overflowFlags = #arith_overflowFlags}> : (tensor<64xi1>, tensor<64xi1>) -> tensor<64xi1>
    "tt.return"(%4) : (tensor<64xi1>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 8 : i32} : () -> ()