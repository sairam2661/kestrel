"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_arith"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %1 = "arith.muli"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %2 = "arith.subi"(%0, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %3 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %4 = "arith.select"(%3, %0, %1) : (tensor<32xi1>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "tt.return"(%4) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) {"ttg.global_scratch_alloc" = #ttg_global_scratch_alloc_params, "ttg.num-warps" = 4 : i32} : () -> ()