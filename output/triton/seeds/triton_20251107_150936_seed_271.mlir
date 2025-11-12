"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32, tt.pointer_range = 16 : i32}], function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_reduce", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.reduce"(%arg0) <{operation = "arith.addi"}> : (tensor<16xi32>) -> tensor<1xi32>
    %1 = "tt.reduce"(%arg1) <{operation = "arith.addi"}> : (tensor<16xi32>) -> tensor<1xi32>
    %2 = "arith.cmpi"(%0, %1, "slt") : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi1>
    %3 = "arith.select"(%2, %arg0, %arg1) : (tensor<1xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%3) : (tensor<16xi32>) -> ()
  }) : (tensor<16xi32>) -> tensor<16xi32>
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : (tensor<16xi32>) -> tensor<16xi32>