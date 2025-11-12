"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (tensor<32xi16>) -> tensor<33xi16>, sym_name = "unusual_op_sequence"}> ({
  ^bb0(%arg0: tensor<32xi16>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<32xi16>}> : () -> tensor<32xi16>
    %1 = "arith.constant"() <{value = dense<2> : tensor<32xi16>}> : () -> tensor<32xi16>
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %3 = "arith.muli"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %4 = "tt.make_range"() <{end = 33 : i32, start = 1 : i32}> : () -> tensor<33xi32>
    %5 = "arith.extendui"(%4) <{from_width = 32, to_width = 16}> : (tensor<33xi32>) -> tensor<33xi16>
    %6 = "arith.select"(%arg0, %3, %5) : (tensor<32xi16>, tensor<32xi16>, tensor<33xi16>) -> tensor<32xi16>
    %7 = "scf.if"(%arg0) ({
      %8 = "arith.addi"(%6, %2) <{overflowFlags = #arith_overflownone}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      "scf.yield"(%8) : (tensor<32xi16>) -> ()
    }, {
      "scf.yield"(%6) : (tensor<32xi16>) -> ()
    }) : (tensor<32xi16>) -> tensor<32xi16>
    "tt.return"(%7) : (tensor<32xi16>) -> ()
  }) : () -> ()
}) : () -> ()