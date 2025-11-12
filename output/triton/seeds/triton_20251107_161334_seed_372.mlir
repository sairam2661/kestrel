"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>), sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "tt.reduce"(%arg0) <{operation = "add", type = i32}> : (tensor<32xi32>) -> tensor<1xi32>
    %1 = "tt.reduce"(%arg1) <{operation = "mul", type = i32}> : (tensor<32xi32>) -> tensor<1xi32>
    %2 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    %3 = "tt.expand_dims"(%2) <{axis = 0 : i32}> : (tensor<1xi32>) -> tensor<32xi32>
    %4:2 = "scf.if"(%3) ({
      %5 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %6 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%5, %6) : (tensor<32xi32>, tensor<32xi32>) -> ()
    }, {
      %7 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %8 = "arith.divsi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%7, %8) : (tensor<32xi32>, tensor<32xi32>) -> ()
    }) : (tensor<32xi32>) -> (tensor<32xi32>, tensor<32xi32>)
    "tt.return"(%4, %4, %3) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()