"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_control_flow"}> ({
    %0 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    "scf.for"(%0, %1, %1) ({
    ^bb0(%arg0: tensor<64xi32>):
      %2 = "arith.constant"() <{value = true}> : () -> i1
      "scf.if"(%2) ({
        %3 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
        %4 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%4) : (tensor<64xi32>) -> ()
      }, {
        %5 = "arith.constant"() <{value = dense<3> : tensor<64xi32>}> : () -> tensor<64xi32>
        %6 = "arith.subi"(%arg0, %5) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%6) : (tensor<64xi32>) -> ()
      }) : (i1) -> tensor<64xi32>
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 2 : i32} : (tensor<64xi32>, i32, i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()