"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1024xi16>, i16) -> tensor<1024xi16>, sym_name = "tensor_select_add"}> ({
  ^bb0(%arg0: tensor<1024xi16>, %arg1: i16):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1024 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "tensor.empty"() : () -> tensor<1024xi16>
    %5 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: index, %arg3: tensor<1024xi16>):
      %6 = "tensor.extract"(%arg0, %arg2) : (tensor<1024xi16>, index) -> i16
      %7 = "arith.cmpi"(%6, %arg1, "slt") : (i16, i16) -> i1
      %8 = "arith.select"(%7, %6, %arg1) : (i1, i16, i16) -> i16
      %9 = "tensor.insert"(%8, %arg3, %arg2) : (i16, tensor<1024xi16>, index) -> tensor<1024xi16>
      "scf.yield"(%9) : (tensor<1024xi16>) -> ()
    }) : (index, index, index, tensor<1024xi16>) -> tensor<1024xi16>
    %10 = "scf.for"(%0, %1, %3, %5) ({
    ^bb0(%arg4: index, %arg5: tensor<1024xi16>):
      %11 = "tensor.extract"(%arg5, %arg4) : (tensor<1024xi16>, index) -> i16
      %12 = "arith.addi"(%arg1, %11) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
      %13 = "tensor.insert"(%12, %arg5, %arg4) : (i16, tensor<1024xi16>, index) -> tensor<1024xi16>
      "scf.yield"(%13) : (tensor<1024xi16>) -> ()
    }) : (index, index, index, tensor<1024xi16>) -> tensor<1024xi16>
    "func.return"(%10) : (tensor<1024xi16>) -> ()
  }) : () -> ()
}) : () -> ()