"builtin.module"() ({
  "func.func"() <{function_type = (f32, index) -> (f32, index), sym_name = "mixed_types_test"}> ({
  ^bb0(%arg0: f32, %arg1: index):
    %cst0 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
    %cst1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %cmp = "arith.cmpi"(%arg1, %cst1, "sgt") : (index, index) -> i1
    %if = "scf.if"(%cmp) ({
      ^bb1(%arg2: index):
        %addf = "arith.addf"(%arg0, %cst0) <{overflowFlags = #arith_overflow_flags}> : (f32, f32) -> f32
        "scf.yield"(%addf, %arg2) : (f32, index) -> ()
    }, {
      ^bb2(%arg2: index):
        %addi = "arith.addi"(%arg1, %cst1) <{overflowFlags = #arith_overflow_flags}> : (index, index) -> index
        "scf.yield"(%arg0, %addi) : (f32, index) -> ()
    }) : (i1) -> (f32, index)
    "func.return"(%if#0, %if#1) : (f32, index) -> ()
  }) : () -> ()
}) : () -> ()