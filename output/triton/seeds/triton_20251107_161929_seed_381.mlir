"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>, sym_name = "mixed_op_kernel", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<32xi8>, %arg1: tensor<32xi8>):
    %0 = "arith.muli"(%arg0, %arg1) : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    %1 = "arith.subi"(%0, %arg0) : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    %2 = "arith.cmpi"(%1, %arg1, "slt") : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi1>
    %3 = "arith.divsi"(%0, %arg1) : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    %4 = "tt.reduce"(%2) <{operation = "add"}> : (tensor<32xi1>) -> i1
    "scf.if"(%4) <{sym_name = "check"}> ({
    ^bb1:
      %5 = "arith.addi"(%3, %arg0) : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
      "scf.yield"() : () -> ()
    }) {
    } : () -> ()
    "tt.return"(%3) : (tensor<32xi8>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()