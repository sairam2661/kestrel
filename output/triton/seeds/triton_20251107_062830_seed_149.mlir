"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, i32) -> tensor<128xi32>, sym_name = "modular_add"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<10> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.constant"() <{value = dense<15> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "arith.muli"(%1, %2) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.constant"() <{value = dense<7> : tensor<128xi32>}> : () -> tensor<128xi32>
    %5 = "arith.remsi"(%3, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.addi"(%arg0, %5) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "scf.if"(%arg1) <{sym_name = "if_modular"}> ({
      ^bb0:
        %8 = "arith.addi"(%6, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        scf.yield %8 : tensor<128xi32>
    }) {
      scf.yield
    } : (i32) -> tensor<128xi32>
    "tt.return"(%7) : (tensor<128xi32>) -> ()
  }) : (tensor<128xi32>, i32) -> tensor<128xi32>
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()