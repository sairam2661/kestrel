"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_control_flow"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "scf.if"(%2) ({
        %4 = "arith.muli"(%arg0, %1) : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }, {
        %5 = "arith.subi"(%arg0, %1) : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }) : (i32) -> i32

      %6 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %7 = "scf.for"(%6) <{upperBound = 15 : i32}> ({
        ^bb1(%iv: i32):
          %8 = "arith.addi"(%iv, %3) : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) : () -> ()

      "tt.return"(%3) : (i32) -> ()
  }) : (i32) -> i32
}) : () -> ()