"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi8>) -> tensor<2x2xi16>, sym_name = "type_boundary_test"}> ({
  ^bb0(%arg0: tensor<2x2xi8>):
    %0 = "tosa.const"() <{values = dense<1 : i16> : tensor<2x2xi16>}> : () -> tensor<2x2xi16>
    %1 = "arith.addi"(%arg0, %0) <{fastmath = #arith_fastmath_attributes}> : (tensor<2x2xi8>, tensor<2x2xi16>) -> tensor<2x2xi16>
    %2 = "tosa.cast"(%1) <{input_signed = true, output_signed = true, output_type = "tensor<2x2xi32>"}> : (tensor<2x2xi16>) -> tensor<2x2xi32>
    %3 = "tosa.const"() <{values = dense<5 : i32> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %4 = "arith.addi"(%2, %3) <{fastmath = #arith_fastmath_attributes}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %5 = "tosa.cast"(%4) <{input_signed = true, output_signed = true, output_type = "tensor<2x2xi16>"}> : (tensor<2x2xi32>) -> tensor<2x2xi16>
    "func.return"(%5) : (tensor<2x2xi16>) -> ()
  }) : () -> ()
}) : () -> ()