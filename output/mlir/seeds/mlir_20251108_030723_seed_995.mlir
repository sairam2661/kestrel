"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "nested_if"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    scf.if %0 : i1  ^bb1(%cmptmp: i1)  : i1  .AggressiveInlining
    :
      si32
    ^bb1(%cmptmp: i1):
      %1 = "arith constant"() <{value = 1 : i32}> : () -> i32
      scf.if %cmptmp : i1  ^bb2(%cmptmp2: i1)  : i1  .AggressiveInlining
      :
        si32
      ^bb2(%cmptmp2: i1):
        %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        "func.return"(%2) : (i32) -> ()
      ^bb3(%cmptmp2: i1):
        "func.return"(%1) : (i32) -> ()
    ^bb3(%cmptmp: i1):
      %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()