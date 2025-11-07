"builtin.module"() ({
  "handshake.func"() <{function_type = (index, memref<10xi32>, none) -> ()}> ({
  ^bb0(%arg0: index, %arg1: memref<10xi32>, %arg2: none):
    %0:2 = "handshake.extmemory"(%arg1, %1#1) <{id = 0 : i32, ldCount = 1 : i32, stCount = 0 : i32}> : (memref<10xi32>, index) -> (i32, none)
    %1:2 = "handshake.load"(%arg0, %0#0, %arg2) : (index, i32, none) -> (i32, index)
    "handshake.return"() : () -> ()
  }) {argNames = ["arg0", "mem", "argCtrl"], resNames = [], sym_name = "singleLoad"} : () -> ()
}) : () -> ()

