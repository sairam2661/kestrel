"builtin.module"() ({
  "handshake.func"() <{function_type = (memref<10xi32>, memref<10xi32>, memref<1xi32>) -> ()}> ({
  ^bb0(%arg0: memref<10xi32>, %arg1: memref<10xi32>, %arg2: memref<1xi32>):
    %0 = "handshake.source"() : () -> none
    %1 = "handshake.constant"(%0) <{value = 0 : index}> : (none) -> index
    %2 = "handshake.constant"(%0) <{value = 0 : i32}> : (none) -> i32
    %3 = "handshake.extmemory"(%arg2, %2, %1) <{id = 2 : i32, ldCount = 0 : i32, stCount = 1 : i32}> : (memref<1xi32>, i32, index) -> none
    %4:2 = "handshake.extmemory"(%arg1, %1) <{id = 1 : i32, ldCount = 1 : i32, stCount = 0 : i32}> : (memref<10xi32>, index) -> (i32, none)
    %5:2 = "handshake.extmemory"(%arg0, %1) <{id = 0 : i32, ldCount = 1 : i32, stCount = 0 : i32}> : (memref<10xi32>, index) -> (i32, none)
    "handshake.return"() : () -> ()
  }) {argNames = ["a", "b", "c"], resNames = [], sym_name = "multipleMemories2"} : () -> ()
}) : () -> ()

