"builtin.module"() ({
  "handshake.func"() <{function_type = (index, i32, memref<10xi32>, none) -> ()}> ({
  ^bb0(%arg0: index, %arg1: i32, %arg2: memref<10xi32>, %arg3: none):
    %0 = "handshake.extmemory"(%arg2, %1#0, %1#1) <{id = 0 : i32, ldCount = 0 : i32, stCount = 1 : i32}> : (memref<10xi32>, i32, index) -> none
    %1:2 = "handshake.store"(%arg0, %arg1, %arg3) : (index, i32, none) -> (i32, index)
    "handshake.return"() : () -> ()
  }) {argNames = ["arg0", "v", "mem", "argCtrl"], resNames = [], sym_name = "singleStore"} : () -> ()
}) : () -> ()

