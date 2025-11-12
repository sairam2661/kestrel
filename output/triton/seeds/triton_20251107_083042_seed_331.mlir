"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %1 = "arith.extsi"(%0) : (tensor<128xi32>) -> tensor<128xi64>
    %2 = "tt.global_scratch_alloc"() <{size = 128}> : () -> tensor<128xi64>
    %3 = "arith.addi"(%1, %2) : (tensor<128xi64>, tensor<128xi64>) -> tensor<128xi64>
    %4 = "arith.trunci"(%3) : (tensor<128xi64>) -> tensor<128xi32>
    "tt.return"(%4) : (tensor<128xi32>) -> ()
  }) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
}) : () -> ()