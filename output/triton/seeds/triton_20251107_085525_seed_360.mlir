"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "nested_loops_with_if"}> ({
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32

    ^bb0():
      %4 = "scf.for"(%0, %1, %2) ({
        ^bb1(%iv: i32):
          %5 = "scf.if"(%iv) ({
            %6 = "arith.addi"(%iv, %iv) : (i32, i32) -> i32
            "scf.yield"(%6) : (i32) -> ()
          }, {
            %7 = "arith.subi"(%iv, %3) : (i32, i32) -> i32
            "scf.yield"(%7) : (i32) -> ()
          }) : (i32) -> i32
          "scf.yield"() : () -> ()
      }) : (i32) -> ()
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()