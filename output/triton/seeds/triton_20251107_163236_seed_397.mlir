"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.xori"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.select"(%arg0, %2, %3) : (i32, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "scf.for"() <{lowerBound = 0 : i32, upperBound = 64 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %6 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
      %7 = "tt.call"() <{callee = "exp_func", operands = () -> ()}> : () -> tensor<8xi32>
      %8 = "arith.muli"(%6, %7) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %9 = "tt.addptr"(%6, %8) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    %10 = "tt.expand_dims"(%4) <{axis = 1 : i32}> : (tensor<64xi32>) -> tensor<64x1xi32>
    %11 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> memref<512xi32>
    "tt.return"() : () -> ()
  }) : (i32) -> ()
  "tt.func"() <{function_type = () -> tensor<8xi32>, sym_name = "exp_func"}> ({
    %0 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %2 = "arith.muli"(%0, %1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%2) : (tensor<8xi32>) -> ()
  }) : () -> tensor<8xi32>
}) : () -> ()