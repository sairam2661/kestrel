"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i1, f32), sym_name = "test_complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %cmp = "arith.cmpi"("slt", %arg0, %c1) : (i32, i32) -> i1
    "scf.if"(%cmp) <{else = true}> ({
    ^bb1:
      %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      "scf.yield"() : () -> ()
    }, {
    ^bb2:
      %3 = "arith.cmpf"("olt", %arg1, %c0) : (f32, i32) -> i1
      "scf.if"(%3) ({
      ^bb3:
        %4 = "tosa.const"() <{values = dense<1> : tensor<1xi1>}> : () -> tensor<1xi1>
        "scf.yield"() : () -> ()
      }, {
      ^bb4:
        "scf.yield"() : () -> ()
      })
      : () -> ()
    })
    : () -> ()
    "func.return"(%cmp, %arg1) : (i1, f32) -> ()
  }) : () -> ()
}) : () -> ()