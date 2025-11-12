"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x32xi32>) -> tensor<128x32xi32>, sym_name = "complexKernel"}> ({
    ^bb0(%arg0: tensor<128x32xi32>):
      %0 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttg_ptr
      %1 = "arith.constant"() <{value = dense<2> : tensor<128x32xi32>}> : () -> tensor<128x32xi32>
      %2 = "arith.addi"(%arg0, %1) : (tensor<128x32xi32>, tensor<128x32xi32>) -> tensor<128x32xi32>
      %3 = "arith.cmpi"(%2, %arg0) <{predicate = 6 : i64}> : (tensor<128x32xi32>, tensor<128x32xi32>) -> tensor<128x32xi1>
      %4 = "scf.if"(%3) ({
        "scf.yield"(%2) : (tensor<128x32xi32>) -> ()
      }, {
        "scf.yield"(%arg0) : (tensor<128x32xi32>) -> ()
      }) : (tensor<128x32xi1>) -> tensor<128x32xi32>
      "tt.return"(%4) : (tensor<128x32xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32} : () -> ()