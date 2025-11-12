"builtin.module"() ({
  "tt.func"() <{function_type = () -> (tensor<128xi32>, tensor<64xi32>), sym_name = "complex_ops"}> ({
    %0 = "ttg.global_scratch_alloc"() <{numElements = 256 : i32, elementType = "i32"}> : () -> memref<256xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflow_mode_NONE}> : (tensor<128xi32>, tensor<64xi32>) -> tensor<128xi32>
    %4:2 = "scf.if"(%1) ({
      %5 = "arith.subi"(%3, %2) <{overflowFlags = #arith_overflow_mode_NONE}> : (tensor<128xi32>, tensor<64xi32>) -> tensor<128xi32>
      "scf.yield"(%5, %5) : (tensor<128xi32>, tensor<128xi32>) -> ()
    }, {
      %6 = "arith.muli"(%3, %2) <{overflowFlags = #arith_overflow_mode_NONE}> : (tensor<128xi32>, tensor<64xi32>) -> tensor<128xi32>
      "scf.yield"(%6, %6) : (tensor<128xi32>, tensor<128xi32>) -> ()
    }) : (tensor<128xi32>) -> (tensor<128xi32>, tensor<128xi32>)
    "tt.return"(%4#0, %4#1) : (tensor<128xi32>, tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()