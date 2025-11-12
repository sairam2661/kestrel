"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>) -> tensor<64xi32>, sym_name = "process_tensor"}> ({
    ^bb0(%arg0: tensor<64xi32>):
      %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %1 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
      %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflowOps}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "scf.if"(%2) ({
        %4 = "tt.addptr"(%arg0, %0) <{alignment = 16}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%4) : (tensor<64xi32>) -> ()
      }, {
        %5 = "arith.subi"(%arg0, %1) <{overflowFlags = #arith_overflowOps}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%5) : (tensor<64xi32>) -> ()
      }) : (tensor<64xi32>) -> tensor<64xi32>
      %6 = "tt.expand_dims"(%3) <{axis = 1}> : (tensor<64xi32>) -> tensor<64x1xi32>
      "tt.return"(%6) : (tensor<64x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()