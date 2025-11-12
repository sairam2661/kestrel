"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<10xi16>) -> i32, sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: tensor<10xi16>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "scf.for"(%0, %2, %3, %1) ({
    ^bb0(%arg1: index, %arg2: i32):
      %5 = "tensor.extract"(%arg0, %arg1) : (tensor<10xi16>, index) -> i16
      %6 = "arith.muli"(%5, %5) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
      %7 = "arith.cmpi"("slt", %6, %5) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i1
      %8 = "arith.select"(%7, %6, %5) : (i1, i16, i16) -> i16
      %9 = "arith.addi"(%8, %arg2) <{overflowFlags = #arith_overflownone}> : (i16, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()