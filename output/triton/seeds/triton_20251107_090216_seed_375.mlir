"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32, tt.pointer_range = 64 : i32}], function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_sequence", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.subi"(%arg1, %arg0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.muli"(%0, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %4 = "arith.select"(%3, %0, %1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.xori"(%4, %2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.remsi"(%5, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 16 : i32} : () -> ()