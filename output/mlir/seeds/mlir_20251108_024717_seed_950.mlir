"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_type_operations"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
      %4 = "arith.cmpi"(%1, %0, "sgt") : (i32, i32) -> i1
      %5 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
      %6 = "arith.cmpf"(%3, %5, "ogt") : (f32, f32) -> i1
      "scf.if"(%4) ({
        ^bb1(%arg2: i1):
          %7 = "arith.cmpi"(%1, %0, "slt") : (i32, i32) -> i1
          "scf.if"(%7) ({
            ^bb2(%arg3: i1):
              "func.return"(%1, %3) : (i32, f32) -> ()
          }) {
            "func.return"=(i32, f32)
          -> () 
          } : () -> ()
      }) {
        "func.return"=(i32, f32)
        -> () 
      } : () -> ()
    }) : () -> ()
  }) : () -> ()