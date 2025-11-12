"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<16x16xf32>, %arg1: tensor<16x16xf32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i64}> : () -> memref<1024xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<16x16xf32>}> : () -> tensor<16x16xf32>
    %2 = "arith.addf"(%arg0, %arg1) : (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
    %3 = "tt.reduce"(%2) ({
      ^bb0(%acc: tensor<16x16xf32>, %elt: tensor<16x16xf32>):
        %4 = "arith.addf"(%acc, %elt) : (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
        "scf.yield"(%4) : (tensor<16x16xf32>) -> ()
    }) {tt.num_stages = 4 : i32} : (tensor<16x16xf32>) -> tensor<16x16xf32>
    "tt.return"(%3) : (tensor<16x16xf32>) -> ()
  }) : () -> ()
}) : () -> ()