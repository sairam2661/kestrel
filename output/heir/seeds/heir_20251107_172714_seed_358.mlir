"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32, i32) -> i32, sym_name = "unusual_control_flow"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32, %arg2: i32):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4 = "arith.constant"() <{value = 4 : i32}> : () -> i32

    %cmp0 = "arith.cmpi"(%arg1, %c2, "slt") : (i32, i32) -> i1
    %if0 = "scf.if"(%cmp0) ({
    ^bb0(%arg3: i1):
      %0 = "arith.addi"(%arg1, %c1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "scf.yield"(%0) : (i32) -> ()
    }) : (i32) -> (i32)
    %select0 = "arith.select"(%arg1, %if0, %c3) : (i32, i32, i32) -> i32

    %cmp1 = "arith.cmpi"(%select0, %c3, "slt") : (i32, i32) -> i1
    %if1 = "scf.if"(%cmp1) ({
    ^bb0(%arg4: i1):
      %1 = "arith.muli"(%select0, %c2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) : (i32) -> (i32)
    %select1 = "arith.select"(%select0, %if1, %c4) : (i32, i32, i32) -> i32

    "func.return"(%select1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()