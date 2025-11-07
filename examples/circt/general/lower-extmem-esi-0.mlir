"builtin.module"() ({
  "handshake.func"() <{function_type = (index, index, i32, memref<10xi32>, none) -> none}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: i32, %arg3: memref<10xi32>, %arg4: none):
    %0:3 = "handshake.extmemory"(%arg3, %3#0, %3#1, %2#1) <{id = 0 : i32, ldCount = 1 : i32, stCount = 1 : i32}> : (memref<10xi32>, i32, index, index) -> (i32, none, none)
    %1:2 = "handshake.fork"(%arg4) : (none) -> (none, none)
    %2:2 = "handshake.load"(%arg0, %0#0, %1#0) : (index, i32, none) -> (i32, index)
    %3:2 = "handshake.store"(%arg1, %arg2, %1#1) : (index, i32, none) -> (i32, index)
    "handshake.sink"(%2#0) : (i32) -> ()
    %4 = "handshake.join"(%0#1, %0#2) : (none, none) -> none
    "handshake.return"(%4) : (none) -> ()
  }) {argNames = ["arg0", "arg1", "v", "mem", "argCtrl"], resNames = ["out0"], sym_name = "main"} : () -> ()
}) : () -> ()

