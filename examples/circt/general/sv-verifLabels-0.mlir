"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clock : i1, input cond : i1>, parameters = [], sym_name = "foo"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    "sv.initial"() ({
      "sv.assert"(%arg1) <{defer = 0 : i32}> : (i1) -> ()
      "sv.assume"(%arg1) <{defer = 0 : i32}> : (i1) -> ()
      "sv.cover"(%arg1) <{defer = 0 : i32}> : (i1) -> ()
    }) : () -> ()
    "sv.assert.concurrent"(%arg0, %arg1) <{event = 0 : i32}> : (i1, i1) -> ()
    "sv.assume.concurrent"(%arg0, %arg1) <{event = 0 : i32}> : (i1, i1) -> ()
    "sv.cover.concurrent"(%arg0, %arg1) <{event = 0 : i32}> : (i1, i1) -> ()
    "sv.initial"() ({
      "sv.assert"(%arg1) <{defer = 0 : i32, label = "imm_assert"}> : (i1) -> ()
      "sv.assume"(%arg1) <{defer = 0 : i32, label = "imm_assume"}> : (i1) -> ()
      "sv.cover"(%arg1) <{defer = 0 : i32, label = "imm_cover"}> : (i1) -> ()
    }) : () -> ()
    "sv.assert.concurrent"(%arg0, %arg1) <{event = 0 : i32, label = "con_assert"}> : (i1, i1) -> ()
    "sv.assume.concurrent"(%arg0, %arg1) <{event = 0 : i32, label = "con_assume"}> : (i1, i1) -> ()
    "sv.cover.concurrent"(%arg0, %arg1) <{event = 0 : i32, label = "con_cover"}> : (i1, i1) -> ()
    "sv.initial"() ({
      "sv.assert"(%arg1) <{defer = 0 : i32, label = "assert_0"}> : (i1) -> ()
      "sv.assume"(%arg1) <{defer = 0 : i32, label = "assume_2"}> : (i1) -> ()
      "sv.cover"(%arg1) <{defer = 0 : i32, label = "cover_4"}> : (i1) -> ()
    }) : () -> ()
    "sv.assert.concurrent"(%arg0, %arg1) <{event = 0 : i32, label = "assert_6"}> : (i1, i1) -> ()
    "sv.assume.concurrent"(%arg0, %arg1) <{event = 0 : i32, label = "assume_8"}> : (i1, i1) -> ()
    "sv.cover.concurrent"(%arg0, %arg1) <{event = 0 : i32, label = "cover_10"}> : (i1, i1) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

