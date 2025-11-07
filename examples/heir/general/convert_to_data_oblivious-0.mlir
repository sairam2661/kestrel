"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}], function_type = (index, index, tensor<32xi16>) -> i16, sym_name = "test"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: tensor<32xi16>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %3 = "tensor.extract"(%arg2, %arg1) : (tensor<32xi16>, index) -> i16
    %4 = "scf.for"(%0, %arg1, %1, %2) ({
    ^bb0(%arg3: index, %arg4: i16):
      %5 = "tensor.extract"(%arg2, %arg3) : (tensor<32xi16>, index) -> i16
      %6 = "arith.cmpi"(%5, %3) <{predicate = 0 : i64}> : (i16, i16) -> i1
      %7 = "scf.if"(%6) ({
        %10 = "arith.constant"() <{value = 2 : i16}> : () -> i16
        %11 = "arith.muli"(%5, %10) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "scf.yield"(%11) : (i16) -> ()
      }, {
        %9 = "arith.addi"(%5, %3) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "scf.yield"(%9) : (i16) -> ()
      }) : (i1) -> i16
      %8 = "arith.addi"(%arg4, %7) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "scf.yield"(%8) : (i16) -> ()
    }) {lower = 0 : i64, upper = 32 : i64} : (index, index, index, i16) -> i16
    "func.return"(%4) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

