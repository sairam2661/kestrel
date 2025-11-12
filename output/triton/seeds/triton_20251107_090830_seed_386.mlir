"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}], function_type = (!tt_PTR_I8, tensor<32xi32>) -> i32, sym_name = "complex_kernel", sym_visibility = "public"}> ({
  ^bb0(%arg0: !tt_PTR_I8, %arg1: tensor<32xi32>):
    %cst0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %cst1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %cst16_i32 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %cst32_i32 = "arith.constant"() <{value = 32 : i32}> : () -> i32

    "scf.for"(%cst0_i32, %cst16_i32, %cst32_i32) <{lowerBound = 0 : i32, upperBound = 16 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %0 = "arith.addi"(%iv, %cst1_i32) : (i32, i32) -> i32
      %1 = "arith.xori"(%0, %cst1_i32) : (i32, i32) -> i32
      %2 = "arith.cmpi"(%1, %cst16_i32, "sgt") : (i32, i32) -> i1
      "scf.if"(%2) ({
      ^bb2:
        %3 = "arith.remsi"(%1, %cst32_i32) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) {
      } : () -> ()
      "scf.yield"() : () -> ()
    }) : (i32) -> ()

    "tt.return"(%cst0_i32) : (i32) -> ()
  }) : (!tt_PTR_I8, tensor<32xi32>) -> i32
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()