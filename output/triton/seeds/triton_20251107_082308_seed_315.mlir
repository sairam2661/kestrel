"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x32xi32>, !ttgPtr) -> tensor<16x32xi32>, sym_name = "complex_reduce_and_expand"}> ({
  ^bb0(%arg0: tensor<16x32xi32>, %arg1: !ttgPtr):
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1 = "tt.expand_dims"(%0) <{dim = 0}> : (tensor<32xi32>) -> tensor<1x32xi32>
    %2 = "tt.addptr"(%arg0, %1) : (tensor<16x32xi32>, tensor<1x32xi32>) -> tensor<16x32xi32>
    %3 = "tt.reduce"(%2) <{operation = "sum"}> ({
    ^bb1(%arg2: tensor<16x32xi32>):
      %4 = "arith.constant"() <{value = dense<2> : tensor<16x32xi32>}> : () -> tensor<16x32xi32>
      %5 = "arith.muli"(%arg2, %4) : (tensor<16x32xi32>, tensor<16x32xi32>) -> tensor<16x32xi32>
      "scf.yield"(%5) : (tensor<16x32xi32>) -> ()
    }) : (tensor<16x32xi32>) -> tensor<16xi32>
    %6 = "tt.expand_dims"(%3) <{dim = 1}> : (tensor<16xi32>) -> tensor<16x1xi32>
    %7 = "tt.call"(%6, %arg1) : (tensor<16x1xi32>, !ttgPtr) -> tensor<16x32xi32>
    "tt.return"(%7) : (tensor<16x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()