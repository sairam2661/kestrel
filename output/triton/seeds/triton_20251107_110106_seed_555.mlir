"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>), sym_name = "tensor_xor_test"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "scf.if"(%0) ({
      %4 = "arith.minimumi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%4) : (tensor<16xi32>) -> ()
    }, {
      %5 = "arith.maximumi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%5) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%3) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi16>, tensor<8xi16>) -> (tensor<8xi16>), sym_name = "tensor_mul_test"}> ({
  ^bb0(%arg0: tensor<8xi16>, %arg1: tensor<8xi16>):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    %1 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    %2 = "arith.remi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    %3 = "scf.if"(%0) ({
      %4 = "arith.shli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
      "scf.yield"(%4) : (tensor<8xi16>) -> ()
    }, {
      %5 = "arith.shri"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
      "scf.yield"(%5) : (tensor<8xi16>) -> ()
    }) : (tensor<8xi16>) -> tensor<8xi16>
    "tt.return"(%3) : (tensor<8xi16>) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> (tensor<4xi8>), sym_name = "tensor_bitwise_and_test"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.andi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %1 = "arith.ori"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %2 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %3 = "scf.if"(%0) ({
      %4 = "arith.noti"(%arg0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>) -> tensor<4xi8>
      "scf.yield"(%4) : (tensor<4xi8>) -> ()
    }, {
      %5 = "arith.andi"(%arg1, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
      "scf.yield"(%5) : (tensor<4xi8>) -> ()
    }) : (tensor<4xi8>) -> tensor<4xi8>
    "tt.return"(%3) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> (tensor<2xi32>), sym_name = "tensor_composite_test"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %1 = "arith.select"(%0, %arg0, %arg1) : (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %2 = "scf.if"(%0) ({
      %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      "scf.yield"(%3) : (tensor<2xi32>) -> ()
    }, {
      %4 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      "scf.yield"(%4) : (tensor<2xi32>) -> ()
    }) : (tensor<2xi1>) -> tensor<2xi32>
    "tt.return"(%2) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()