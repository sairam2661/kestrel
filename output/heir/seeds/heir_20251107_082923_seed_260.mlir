"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !tensor, !i32) -> !secretsecret, sym_name = "tensor_extract_and_secret_sequence"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !tensor, %arg2: !i32):
    %0 = "tensor.extract"(%arg1, %arg2) : (tensor<64xi8>, i32) -> i8
    %1 = "arith.muli"(%0, %0) <{overflowFlags = #arithoverflownone}> : (i8, i8) -> i8
    %2 = "secret.generic"(%arg0, %1) ({
    ^bb0(%arg3: i16, %arg4: i8):
      %3 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arithoverflownone}> : (i16, i8) -> i16
      %4 = "arith.cmpi"("slt", %3, %arg4) <{overflowFlags = #arithoverflownone}> : (i16, i8) -> i1
      %5 = "scf.if"(%4) ({
        %6 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arithoverflownone}> : (i16, i8) -> i16
        "scf.yield"(%6) : (i16) -> ()
      }, {
        "scf.yield"(%arg3) : (i16) -> ()
      }) : (i1) -> i16
      "secret.yield"(%5) : (i16) -> ()
    }) : (!secretsecret, i8) -> !secretsecret
    "func.return"(%2) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()