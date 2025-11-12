"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "ttg.global_scratch_alloc"(%arg0) <{size = 1024 : i32}> : (i32) -> !ttg_ptr
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "scf.if"(%arg0) ({
      %4 = "arith.select"(%arg0, %arg1, %0) : (i32, tensor<16xi32>, i32) -> tensor<16xi32>
      "scf.yield"(%4) : (tensor<16xi32>) -> ()
    }, {
      %5 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, i32) -> tensor<16xi32>
      "scf.yield"(%5) : (tensor<16xi32>) -> ()
    }) : (i32) -> tensor<16xi32>
    %6 = "ttg.global_scratch_alloc"(%2) <{size = 2048 : i32}> : (i32) -> !ttg_ptr
    "tt.return"(%3) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()