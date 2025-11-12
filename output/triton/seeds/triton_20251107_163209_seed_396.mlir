"builtin.module"() ({
  "tt.func"() <{function_type = (i1) -> (tensor<128xi32>), sym_name = "complex_if"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.constant"() <{value = dense<3> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "arith.select"(%arg0, %0, %1) : (i1, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.addi"(%3, %2) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "scf.if"(%arg0) ({
      ^bb1(%arg1: i1):
        %6 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
        %7 = "arith.muli"(%6, %2) : (tensor<64xi32>, tensor<128xi32>) -> tensor<64xi32>
        "scf.yield"(%7) : (tensor<64xi32>) -> ()
    }, {
      ^bb2(%arg2: i1):
        %8 = "tt.make_range"() <{end = 64 : i32, start = 32 : i32}> : () -> tensor<64xi32>
        %9 = "arith.xori"(%8, %4) : (tensor<64xi32>, tensor<128xi32>) -> tensor<64xi32>
        "scf.yield"(%9) : (tensor<64xi32>) -> ()
    }) : (i1) -> tensor<64xi32>
    %10 = "arith.addi"(%4, %5) : (tensor<128xi32>, tensor<64xi32>) -> tensor<128xi32>
    "tt.return"(%10) : (tensor<128xi32>) -> ()
  }) : () -> (tensor<128xi32>)
}) : () -> ()