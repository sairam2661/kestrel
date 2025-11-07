"builtin.module"() ({
  "handshake.func"() <{function_type = (index, i32, memref<10xi32>, memref<10xi8>, none) -> ()}> ({
  ^bb0(%arg0: index, %arg1: i32, %arg2: memref<10xi32>, %arg3: memref<10xi8>, %arg4: none):
    %0 = "handshake.extmemory"(%arg2, %1#0, %1#1) <{id = 0 : i32, ldCount = 0 : i32, stCount = 1 : i32}> : (memref<10xi32>, i32, index) -> none
    %1:2 = "handshake.store"(%arg0, %arg1, %arg4) : (index, i32, none) -> (i32, index)
    %2:2 = "handshake.extmemory"(%arg3, %3#1) <{id = 1 : i32, ldCount = 1 : i32, stCount = 0 : i32}> : (memref<10xi8>, index) -> (i8, none)
    %3:2 = "handshake.load"(%arg0, %2#0, %arg4) : (index, i8, none) -> (i8, index)
    "handshake.return"() : () -> ()
  }) {argNames = ["arg0", "v", "mem1", "mem2", "argCtrl"], resNames = [], sym_name = "multipleMemories"} : () -> ()
}) : () -> ()

