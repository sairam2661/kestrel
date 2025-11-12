"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x5xi8>, tensor<4x5xi8>) -> tensor<4x5xi8>, sym_name = "tosa_xor_test"}> ({
  ^bb0(%arg0: tensor<4x5xi8>, %arg1: tensor<4x5xi8>):
    %0 = "tosa.const"() <{values = dense<1> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.const"() <{values = dense<3> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.const"() <{values = dense<-5> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.bitcast"(%arg0) <{input_type = "tensor<4x5xi8>", output_type = "tensor<4x5xi16>"}> : (tensor<4x5xi8>) -> tensor<4x5xi16>
    %4 = "tosa.bitcast"(%arg1) <{input_type = "tensor<4x5xi8>", output_type = "tensor<4x5xi16>"}> : (tensor<4x5xi8>) -> tensor<4x5xi16>
    %5 = "tosa.add"(%3, %4) <{input_type = "tensor<4x5xi16>", output_type = "tensor<4x5xi16>"}> : (tensor<4x5xi16>, tensor<4x5xi16>) -> tensor<4x5xi16>
    %6 = "arith.cmpi"(%5, %0, "slt") : (tensor<4x5xi16>, tensor<1xi8>) -> tensor<4x5xi1>
    %7 = "arith.cmpi"(%5, %1, "sgt") : (tensor<4x5xi16>, tensor<1xi8>) -> tensor<4x5xi1>
    %8 = "arith.cmpi"(%5, %2, "sle") : (tensor<4x5xi16>, tensor<1xi8>) -> tensor<4x5xi1>
    %9 = "tosa.bitcast"(%6) <{input_type = "tensor<4x5xi1>", output_type = "tensor<4x5xi8>"}> : (tensor<4x5xi1>) -> tensor<4x5xi8>
    %10 = "tosa.bitcast"(%7) <{input_type = "tensor<4x5xi1>", output_type = "tensor<4x5xi8>"}> : (tensor<4x5xi1>) -> tensor<4x5xi8>
    %11 = "tosa.bitcast"(%8) <{input_type = "tensor<4x5xi1>", output_type = "tensor<4x5xi8>"}> : (tensor<4x5xi1>) -> tensor<4x5xi8>
    %12 = "tosa.xor"(%9, %10) <{input_type = "tensor<4x5xi8>", output_type = "tensor<4x5xi8>"}> : (tensor<4x5xi8>, tensor<4x5xi8>) -> tensor<4x5xi8>
    %13 = "tosa.xor"(%12, %11) <{input_type = "tensor<4x5xi8>", output_type = "tensor<4x5xi8>"}> : (tensor<4x5xi8>, tensor<4x5xi8>) -> tensor<4x5xi8>
    "func.return"(%13) : (tensor<4x5xi8>) -> ()
  }) : () -> ()
}) : () -> ()