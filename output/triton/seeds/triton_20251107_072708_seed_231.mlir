"builtin.module"() ({
  "tt.func"() <{function_type = (!tti32, !tti32) -> (!tti32), sym_name = "test_func", sym_visibility = "public"}> ({
    ^bb0(%arg0: !tti32, %arg1: !tti32):
      %0 = "arith.remsi"(%arg0, %arg1) : (!tti32, !tti32) -> !tti32
      %1 = "arith.addi"(%arg0, %arg1) : (!tti32, !tti32) -> !tti32
      %2 = "arith.cmpi"("ne", %0, %1) : (!tti32, !tti32) -> i1
      %3 = "arith.select"(%2, %1, %0) : (i1, !tti32, !tti32) -> !tti32
      "tt.return"(%3) : (!tti32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (!tti32) -> (!tti32), sym_name = "helper_func", sym_visibility = "private"}> ({
    ^bb0(%arg0: !tti32):
      %0 = "arith.xori"(%arg0, %arg0) : (!tti32, !tti32) -> !tti32
      "tt.return"(%0) : (!tti32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (), sym_name = "main_func", sym_visibility = "public"}> ({
    ^bb0:
      %0 = "tt.call"() <{callee = @helper_func}> : () -> !tti32
      %1 = "tt.call"() <{callee = @test_func, operands = [42 : i32, 10 : i32]}> : () -> !tti32
      "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()