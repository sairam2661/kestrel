"builtin.module" () ({
  "func.func"() <{function_type = (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: tensor<4xi16>, %arg1: tensor<4xi16>):
      %0 = "arith.constant"() <{value = 1 : index}> : () -> index
      %1 = "arith.constant"() <{value = 2 : index}> : () -> index
      %2 = "arith.constant"() <{value = 3 : index}> : () -> index
      %3 = "arith.constant"() <{value = 4 : index}> : () -> index
      %4 = "arith.constant"() <{value = 5 : index}> : () -> index
      %5 = "arith.constant"() <{value = 6 : index}> : () -> index
      %6 = "arith.constant"() <{value = 7 : index}> : () -> index
      %7 = "arith.constant"() <{value = 8 : index}> : () -> index
      %8 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi16>, index) -> tensor<4xi16>
      %9 = "tensor_ext.rotate"(%arg1, %1) : (tensor<4xi16>, index) -> tensor<4xi16>
      %10 = "tensor.extract"(%8, %2) : (tensor<4xi16>, index) -> i16
      %11 = "tensor.extract"(%9, %3) : (tensor<4xi16>, index) -> i16
      %12 = "arith.addi"(%10, %11) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
      %13 = "arith.select"(%12, %10, %11) <{pred = "eq"}> : (i16, i16, i16) -> i16
      %14 = "tensor.insert"(%13, %8, %4) : (i16, tensor<4xi16>, index) -> tensor<4xi16>
      %15 = "tensor.insert"(%13, %9, %5) : (i16, tensor<4xi16>, index) -> tensor<4xi16>
      %16 = "scf.for"(%0, %6, %4) ({
        ^bb1(%iv: index):
          %17 = "tensor.extract"(%arg0, %iv) : (tensor<4xi16>, index) -> i16
          %18 = "tensor.extract"(%arg1, %iv) : (tensor<4xi16>, index) -> i16
          %19 = "arith.addi"(%17, %18) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
          %20 = "tensor.insert"(%19, %14, %iv) : (i16, tensor<4xi16>, index) -> tensor<4xi16>
          %21 = "scf.yield"(%20) : (tensor<4xi16>) -> tensor<4xi16>
      }) : (tensor<4xi16>) -> tensor<4xi16>
      %22 = "scf.for"(%0, %7, %4) ({
        ^bb2(%iv: index):
          %23 = "tensor.extract"(%arg0, %iv) : (tensor<4xi16>, index) -> i16
          %24 = "tensor.extract"(%arg1, %iv) : (tensor<4xi16>, index) -> i16
          %25 = "arith.muli"(%23, %24) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
          %26 = "tensor.insert"(%25, %16, %iv) : (i16, tensor<4xi16>, index) -> tensor<4xi16>
          %27 = "scf.yield"(%26) : (tensor<4xi16>) -> tensor<4xi16>
      }) : (tensor<4xi16>) -> tensor<4xi16>
      "func.return"(%27) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()