"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "mixed_precision_add"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 64, alignment = 32}> : () -> !ttg PTR
    .ylim
    %2: tensor<32xi32>  %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "scf.for"(%c0 : index) ({
    ^bb1(%iv: index):
      %6 = "arith.extract_i"(%3, %iv) : (tensor<32xi32>, index) -> i32
      %7 = "arith.cmpi"(%6, %c0) <{predicate = "eq"}> : (i32, i32) -> i1
      %8:2 = "scf.if"(%7) ({
        "scf.yield"(%6, %6) : (i32, i32) -> ()
      }, {
        %9 = "arith.subi"(%6, %c1) : (i32, i32) -> i32
        "scf.yield"(%9, %9) : (i32, i32) -> ()
      }) : (i1) -> (i32, i32)
      %10 = "arith.addi"(%8#0, %8#1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %11 = "arith.insert_i"(%10, %3, %iv) : (i32, tensor<32xi32>, index) -> tensor<32xi32>
      "scf.yield"() : () -> ()
    }) : (index) -> () attributes
    .ylim
    "tt.return" : () -> ()
  }) : () -> ()
}) : () -> ()