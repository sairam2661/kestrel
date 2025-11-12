"builtin.module"() ({
  "func.func"() <{function_type = (!secret
    ) -> !secret, sym_name = "fuzz_complex_control_flow"}> ({
  ^bb0(%arg0: !secret):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith
    }>: (i32, i32) -> i32
    
    "scf.if"(%2) ({
    ^bb0(%arg1: i1):
      %3 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      %4 = "arith.constant"() <{value = 15 : i32}> : () -> i32
      %5 = "arith.subi"(%3, %4) <{overflowFlags = #arith
      }>: (i32, i32) -> i32
      
      "scf.if"(%5) ({
      ^bb0(%arg2: i1):
        %6 = "arith.constant"() <{value = 30 : i32}> : () -> i32
        %7 = "arith.constant"() <{value = 25 : i32}> : () -> i32
        %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith
        }>: (i32, i32) -> i32
        "scf.yield"(%8) : (i32) -> ()
      }, {
      ^bb0(%arg3: i1):
        %6 = "arith.constant"() <{value = 30 : i32}> : () -> i32
        %7 = "arith.constant"() <{value = 25 : i32}> : () -> i32
        %8 = "arith.subi"(%6, %7) <{overflowFlags = #arith
        }>: (i32, i32) -> i32
        "scf.yield"(%8) : (i32) -> ()
      }) : (i1) -> i32
      
      "scf.yield"(%5) : (i1) -> ()
    }, {
    ^bb0(%arg4: i1):
      %3 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      %4 = "arith.constant"() <{value = 15 : i32}> : () -> i32
      %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith
      }>: (i32, i32) -> i32
      
      "scf.if"(%5) ({
      ^bb0(%arg2: i1):
        %6 = "arith.constant"() <{value = 30 : i32}> : () -> i32
        %7 = "arith.constant"() <{value = 25 : i32}> : () -> i32
        %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith
        }>: (i32, i32) -> i32
        "scf.yield"(%8) : (i32) -> ()
      }, {
      ^bb0(%arg3: i1):
        %6 = "arith.constant"() <{value = 30 : i32}> : () -> i32
        %7 = "arith.constant"() <{value = 25 : i32}> : () -> i32
        %8 = "arith.subi"(%6, %7) <{overflowFlags = #arith
        }>: (i32, i32) -> i32
        "scf.yield"(%8) : (i32) -> ()
      }) : (i1) -> i32
      
      "scf.yield"(%5) : (i1) -> ()
    }) : (i1) -> i1
    
    "scf.yield"(%4) : (i1) -> ()
  }) : (i32) -> i32
  
  "func.return"(%2) : (i32) -> ()
}) : () -> ()