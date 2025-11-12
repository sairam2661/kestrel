"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>) -> tensor<4xi16>, sym_name = "process_tensor"}> ({
  ^bb0(%arg0: tensor<4xi16>):
    %0 = "tensor.extract"(%arg0, 0) : (tensor<4xi16>, index) -> i16
    %1 = "arith.addi"(%0, %0) <{overflowFlags = #arith_overflowModes}> : (i16, i16) -> i16
    %2 = "arith.cmpi"("slt", %1, 10) : (i16, i16) -> i1
    %3 = "scf.if"(%2) ({
    ^bb0:
      %4 = "arith.addi"(%1, 1) <{overflowFlags = #arith_overflowModes}> : (i16, i16) -> i16
      "scf.yield"(%4) : (i16) -> i16
    }) : (i1) -> i16
    %5 = "tensor.insert"(%3, %arg0, 0) : (i16, tensor<4xi16>, index) -> tensor<4xi16>
    "func.return"(%5) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()