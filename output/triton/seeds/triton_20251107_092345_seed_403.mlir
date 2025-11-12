"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi8>, memref<16xi32>) -> tensor<16xi32>, sym_name = "fuzz_example"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: memref<16xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_rnone}> : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %1) <{overflowFlags = #arith_overflow_rnone}> : (i32, i32) -> i32
    %4 = "tt.addptr"(%arg1, %3) : (memref<16xi32>, i32) -> !tt_ptr
    %5 = "tt.expand_dims"(%arg0) <{dim = 1 : i32}> : (tensor<16xi8>) -> tensor<16x1xi8>
    %6 = "scf.if"(%3) ({
      %7 = "tt.reduce"() <{operation = "add", identity = 0 : i32}> ({
      ^bb0(%acc: i32, %val: i32):
        %8 = "arith.addi"(%acc, %val) <{overflowFlags = #arith_overflow_rnone}> : (i32, i32) -> i32
        "scf.yield"(%8) : (i32) -> ()
      }) : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }, {
      %9 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "scf.yield"(%9) : (i32) -> ()
    }) : (i32) -> i32
    %10 = "tt.call"("fuzz_example_helper") <{arg0 = {ssa_use = "%arg0"}}> : (tensor<16x1xi8>) -> i32
    "tt.return"(%10) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<16x1xi8>) -> i32, sym_name = "fuzz_example_helper"}> ({
  ^bb0(%arg0: tensor<16x1xi8>):
    %11 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %12 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %13 = "arith.addi"(%11, %12) <{overflowFlags = #arith_overflow_rnone}> : (i32, i32) -> i32
    "tt.return"(%13) : (i32) -> ()
  }) : () -> ()
}) : () -> ()