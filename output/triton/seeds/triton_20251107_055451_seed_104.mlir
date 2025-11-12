"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "reduce_and_alloc"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> !ttg ptr
      .attribute "alignment"  : i32
      %1 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %2 = "scf.for"() <{lowerBound = 0 : i32, upperBound = 128 : i32, step = 1 : i32}> ({
        ^bb1(%iv: i32):
          %3 = "arith.addi"(%iv, %iv) : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) : () -> ()
      "tt.return"(%1) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()