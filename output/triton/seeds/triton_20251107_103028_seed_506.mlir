"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.nv_tma_desc = 1 : i32}], function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "tensor_ops"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %1 = "arith.muli"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.remsi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.divsi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "scf.if"(%3) <{sym_name = "if_region"}> ({
      %4 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"() : () -> ()
    }) {
      "scf.yield"=[]  } : (tensor<128xi32>) -> ()
    "tt.return"(%0) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()