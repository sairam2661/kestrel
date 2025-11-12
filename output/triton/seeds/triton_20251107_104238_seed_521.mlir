"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%0, %1, "slt") : (i32, i32) -> i1
    scf.if %2: () -> ()  ^bb1(%c0: i32)  :  %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    ^bb1(%c0: i32):
      %3 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
      "tt.return"(%3) : (i32) -> ()
    ^bb2:
      %4 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
      "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()