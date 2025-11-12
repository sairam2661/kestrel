"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "tensor_logic"}> ({
    ^bb0:
      %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      %1 = "tt.make_range"() <{end = 64 : i32, start = 16 : i32}> : () -> tensor<48xi32>
      %2 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<32xi32>) -> tensor<32x1xi32>
      %3 = "arith.addi"(%2, %1) : (tensor<32x1xi32>, tensor<48xi32>) -> tensor<32x1xi32>
      %4 = "arith.subi"(%3, %0) : (tensor<32x1xi32>, tensor<32xi32>) -> tensor<32x1xi32>
      %5 = "tt.reduce"(%4) <{operation = "sum", reduction_dim = 0 : i32}> : (tensor<32x1xi32>) -> tensor<1xi32>
      %6 = "tt.reduce"(%5) <{operation = "max", reduction_dim = 0 : i32}> : (tensor<1xi32>) -> tensor<1xi32>
      "tt.return"(%6) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()