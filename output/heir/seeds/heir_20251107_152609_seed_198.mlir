"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}], function_type = (f64, tensor<16x16xi1>, tensor<16x16xi1>) -> i1, sym_name = "test"}> ({
  ^bb0(%arg0: f64, %arg1: tensor<16x16xi1>, %arg2: tensor<16x16xi1>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %3 = "tensor_ext.rotate"(%arg1, %0, %0, %0, %0) : (tensor<16x16xi1>, index, index, index, index) -> tensor<16x16xi1>
    %4 = "scf.for"(%0, %0, %1, %2) ({
    ^bb0(%arg3: index, %arg4: i1):
      %5 = "tensor.extract"(%arg2, %arg3) : (tensor<16x16xi1>, index) -> i1
      %6 = "arith.cmpi"(%5, %4) <{predicate = 0 : i64}> : (i1, i1) -> i1
      %7 = "scf.if"(%6) ({
        %10 = "arith.constant"() <{value = 1 : i1}> : () -> i1
        %11 = "arith.addi"(%5, %10) <{overflowFlags = #arith_overflownone}> : (i1, i1) -> i1
        "scf.yield"(%11) : (i1) -> ()
      }, {
        %9 = "arith.subi"(%5, %4) <{overflowFlags = #arith_overflownone}> : (i1, i1) -> i1
        "scf.yield"(%9) : (i1) -> ()
      }) : (i1) -> i1
      %8 = "arith.addi"(%arg4, %7) <{overflowFlags = #arith_overflownone}> : (i1, i1) -> i1
      "scf.yield"(%8) : (i1) -> ()
    }) {lower = 0 : i64, upper = 16 : i64} : (index, index, index, i1) -> i1
    "func.return"(%4) : (i1) -> ()
  }) : () -> ()
}) : () -> ()