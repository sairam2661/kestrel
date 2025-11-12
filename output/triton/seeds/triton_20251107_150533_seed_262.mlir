"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>) -> tensor<32xi32>, sym_name = "tensor_op_chain", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<32xi32>):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %1 = "arith.muli"(%0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.remsi"(%1, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.xori"(%2, %arg0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.divsi"(%3, %arg0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "tt.expand_dims"(%4, %c0) : (tensor<32xi32>, i32) -> tensor<1x32xi32>
    %6 = "tt.make_range"() <{start = 0 : i32, end = 32 : i32}> : () -> tensor<32xi32>
    %7 = "scf.if"(%true) <{sym_name = "if_condition"}> ({
    ^bb1:
      %8 = "arith.addi"(%arg0, %6) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%8) : (tensor<32xi32>) -> ()
    }, {
    ^bb2:
      %9 = "arith.subi"(%arg0, %6) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%9) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi32>) -> tensor<32xi32>
    %10 = "scf.for"() <{sym_name = "for_loop", kind = #scfKindParallel, lowerBound = 0 : index, upperBound = 16 : index, step = 1 : index}> ({
    ^bb3(%iv: index):
      %11 = "arith.addi"(%7, %iv) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, index) -> tensor<32xi32>
      "scf.yield"() : () -> ()
    }) : () -> ()
    "tt.return"(%5) : (tensor<1x32xi32>) -> ()
  }) : (tensor<32xi32>) -> tensor<1x32xi32>
}) : () -> ()