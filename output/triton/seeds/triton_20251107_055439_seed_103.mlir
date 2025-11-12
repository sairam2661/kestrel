"builtin.module"() ({
  "tt.func"() <{
    function_type = (tensor<128xi32>, tensor<128xi32>, tensor<128xi32>, tensor<128xi32>) -> (tensor<128xi32>, tensor<128xi32>),
    sym_name = "complex_reduction"
  }> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>, %arg2: tensor<128xi32>, %arg3: tensor<128xi32>):
      %0 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> i64
      %1 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %2 = "arith.muli"(%arg2, %arg3) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %3 = "scf.for"(%arg0, %arg1) ({
        ^bb1(%iv0: tensor<128xi32>, %iv1: tensor<128xi32>):
          %4 = "arith.addi"(%iv0, %iv1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
          "scf.yield"(%4) : (tensor<128xi32>) -> ()
      }) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%1, %2) : (tensor<128xi32>, tensor<128xi32>) -> ()
    }) : () -> ()
}) : () -> ()