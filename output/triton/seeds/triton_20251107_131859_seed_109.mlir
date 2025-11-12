"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32, tt.pointer_range = 64 : i32}], function_type = (!ttptr) -> (), sym_name = "complex_kernel", sym_visibility = "public"}> ({
  ^bb0(%arg0: !tt_ptr):
    %1 = "arith.constant"() <{value = dense<true> : tensor<32xi1>}> : () -> tensor<32xi1>
    %2 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %4 = "scf.for"(%2, %3, %2) ({
    ^bb1(%arg1: i32):
      %5 = "scf.if"(%1) ({
        %6 = "arith.muli"(%arg1, %arg1) : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }, {
        %7 = "arith.divsi"(%arg1, %3) : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (tensor<32xi1>) -> i32
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
    "tt.call"() <{callee = @helper_function}> : () -> ()
    "tt.return"() : () -> ()
  }) : () -> ()

  "tt.func"() <{function_type = () -> (), sym_name = "helper_function", sym_visibility = "private"}> ({
  ^bb2():
    %8 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %9 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    "scf.for"(%8, %9, %8) ({
    ^bb3(%arg2: i32):
      %10 = "arith.remsi"(%arg2, %8) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 1 : i32} : (i32, i32, i32) -> ()
    "scf.yield"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()