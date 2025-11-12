"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>, %arg2: tensor<64xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %1 = "arith.subi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "arith.muli"(%0, %arg2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.xori"(%1, %arg2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.cmpi"(%2, %3, "ne") : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %5 = "scf.if"(%4) ({
      ^bb0(%5: tensor<64xi1>):
        %6 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "tt.return"(%6) : (tensor<64xi32>) -> ()
      }, {
        ^bb1(%5: tensor<64xi1>):
        %7 = "arith.subi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "tt.return"(%7) : (tensor<64xi32>) -> ()
      }) : (tensor<64xi1>) -> tensor<64xi32>
  }) : () -> tensor<64xi32>
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32} : () -> ()