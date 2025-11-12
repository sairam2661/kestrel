"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgglobal_scratch_alloc_result, tensor<64xi32>) -> (), sym_name = "complex_scratch_alloc"}> ({
    ^bb0(%arg0: !ttgglobal_scratch_alloc_result, %arg1: tensor<64xi32>):
      %0 = "arith.constant"() <{value = 128 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 32 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = true}> : () -> i1
      %3 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.cmpi"(%3, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %5 = "arith.select"(%4, %0, %1) : (i1, i32, i32) -> i32
      %6 = "tt.addptr"(%arg0, %5) : (!ttgglobal_scratch_alloc_result, i32) -> !ttgglobal_scratch_alloc_result
      %7 = "arith.addi"(%3, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %8 = "arith.xori"(%3, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %9 = "arith.divsi"(%3, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %10 = "tt.expand_dims"(%arg1, %9) : (tensor<64xi32>, i32) -> tensor<64x1xi32>
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()