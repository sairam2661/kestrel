"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<32xi32>, tensor<32xi32>) -> i1
    %1 = "arith.constant"() <{value = dense<1234> : tensor<32xi32>}> : () -> tensor<32xi32>
    %2 = "arith.xori"(%arg0, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.muli"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "scf.if"(%0) ({
      %5 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%5) : (tensor<32xi32>) -> ()
    }, {
      %6 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      "scf.yield"(%6) : (tensor<32xi32>) -> ()
    }) : (i1) -> tensor<32xi32>
    %7 = "tt.reduce"(%4, "add") : (tensor<32xi32>, i32) -> tensor<32xi32>
    "tt.return"(%7) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()