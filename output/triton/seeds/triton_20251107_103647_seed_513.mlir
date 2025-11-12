"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xf32>) -> (tensor<64xi32>, tensor<64xf32>, tensor<64xi32>), sym_name = "complex_operations"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xf32>):
      %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> memref<1024xi8>
      %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
      %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %4 = "arith.cmpi"(%arg0, %1) <{predicate = 4 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
      %5 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %6 = "arith.addf"(%arg1, %arg1) <{fastmath = {approx = true}}> : (tensor<64xf32>, tensor<64xf32>) -> tensor<64xf32>
      %7 = "scf.if"(%4) ({
        %8 = "arith.subi"(%3, %2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%8) : (tensor<64xi32>) -> ()
      }, {
        %8 = "arith.addi"(%3, %2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%8) : (tensor<64xi32>) -> ()
      }) : (tensor<64xi1>) -> (tensor<64xi32>)
      "tt.return"(%2, %6, %7) : (tensor<64xi32>, tensor<64xf32>, tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()