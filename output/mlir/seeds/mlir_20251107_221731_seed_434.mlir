"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<3x2xi8>) -> tensor<2x2xi8>, sym_name = "matrix_multiply"}> ({
    ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<3x2xi8>):
      %0 = "tosa.const"() <{values = dense<0> : tensor<2x2xi8>}> : () -> tensor<2x2xi8>
      %1 = "tosa.const"() <{values = dense<1> : tensor<1xi8>}> : () -> tensor<1xi8>
      ^bb1(%i0: index):
        %2 = "arith.cmpi"(%i0, "arith.constant"  ) : (index, index) -> i1,    index
        ^bb2(%i1: index):
          %3 = "arith.cmpi"(%i1, "arith.constant"  ) : (index, index) -> i1,   index
          %4 = "arith.constant"  () : () -> index
          %5 = "arith.addi"(%i1, %4) : (index, index) -> index
          %6 = "arith.cmpi"(%5, "arith.constant"  ) : (index, index) -> i1,   index
          %7 = "arith.select"(%6, %i1, %5) : (i1, index, index) -> index
          %8 = "arith.addi"(%i0, %4) : (index, index) -> index
          %9 = "arith.cmpi"(%8, "arith.constant"  ) : (index, index) -> i1,   index
          %10 = "arith.select"(%9, %i0, %8) : (i1, index, index) -> index
          %11 = "tosa.extract"(%arg0, %10, %7) : (tensor<2x3xi8>, index, index) -> i8
          %12 = "tosa.extract"(%arg1, %7, %10) : (tensor<3x2xi8>, index, index) -> i8
          %13 = "arith.muli"(%11, %12) : (i8, i8) -> i8
          %14 = "tosa.extract"(%0, %10, %i1) : (tensor<2x2xi8>, index, index) -> i8
          %15 = "arith.addi"(%14, %13) : (i8, i8) -> i8
          %16 = "tosa.insert"(%15, %0, %10, %i1) : (i8, tensor<2x2xi8>, index, index) -> tensor<2x2xi8>
          scf.yield
        %17 : tensor<2x2xi8> scf.yield %16
      : (index) -> (tensor<2x2xi8>)^bb3(%i2: index):
        scf.yield
      %18 : tensor<2x2xi8> scf.yield %17
    : (index) -> (tensor<2x2xi8>)
    "func.return"(%18) : (tensor<2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()