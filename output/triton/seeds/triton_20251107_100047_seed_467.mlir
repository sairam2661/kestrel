"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<32xi16>, tensor<16xi8>) -> (tensor<32xi16>, tensor<16xi8>), sym_name = "complex_operations"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<32xi16>, %arg2: tensor<16xi8>):
    %0 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %2 = "tt.global_scratch_alloc"() <{size = 256 : i32}> : () -> !ttgPtr
    %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %4 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    "scf.if"(%arg0) ({
      %5 = "arith.addi"(%arg1, %4) <{overflowFlags = #arith_overflow_none}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %6 = "arith.subi"(%arg2, %3) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
      "tt.return"(%5, %6) : (tensor<32xi16>, tensor<16xi8>) -> ()
    }, {
      %7 = "arith.subi"(%arg1, %4) <{overflowFlags = #arith_overflow_none}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %8 = "arith.addi"(%arg2, %3) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
      "tt.return"(%7, %8) : (tensor<32xi16>, tensor<16xi8>) -> ()
    }) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32} : () -> ()