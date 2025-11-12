"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi16>, tensor<8xi16>, tensor<8xi16>) -> (tensor<8xi16>, tensor<8xi16>), sym_name = "complex_op_combinations"}> ({
  ^bb0(%arg0: tensor<8xi16>, %arg1: tensor<8xi16>, %arg2: tensor<8xi16>):
    %0 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> !ttg_ptr
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_none}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    %2 = "arith.subi"(%arg0, %arg2) <{overflowFlags = #arith_overflow_mode_none}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    %3 = "tt.make_range"() <{start = 0 : i32, end = 8 : i32}> : () -> tensor<8xi32>
    %4 = "arith.constant"() <{value = dense<1> : tensor<8xi16>}> : () -> tensor<8xi16>
    %5 = "arith.muli"(%arg0, %4) <{overflowFlags = #arith_overflow_mode_none}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    %6 = "arith.andi"(%arg1, %arg2) : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    %7 = "arith.ori"(%arg1, %arg2) : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    %8 = "arith.xori"(%arg1, %arg2) : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    "tt.return"(%1, %7) : (tensor<8xi16>, tensor<8xi16>) -> ()
  }) : () -> ()
}) : () -> ()