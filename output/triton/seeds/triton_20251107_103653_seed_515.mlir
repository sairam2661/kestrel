"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>, tensor<32xi32>), sym_name = "tensor_maniplulation"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
      %0 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
      %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %2 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %3 = "ttg.global_scratch_alloc"() <{size = 256 : i32, align = 32 : i32}> : () -> memref<64xi32>
      %4 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %5 = "scf.if"(%4) ({
        "ttg.global_scratch_alloc"() <{size = 128 : i32, align = 16 : i32}> : () -> memref<32xi32>
        "scf.yield"() : () -> ()
      }, {
        "ttg.global_scratch_alloc"() <{size = 64 : i32, align = 8 : i32}> : () -> memref<16xi32>
        "scf.yield"() : () -> ()
      }) : (tensor<32xi1>) -> ()
      "tt.return"(%1, %2) : (tensor<32xi32>, tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()